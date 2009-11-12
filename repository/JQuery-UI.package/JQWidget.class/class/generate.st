private
generate
	"This code is used to generate the widget classes from the JQuery documentation. It is not necessary to port or call this method from any Smalltalk platform other than Pharo. The actual code of this method is commented to avoid problems on other platforms."

	"| model url comment |
	model := (Smalltalk at: #RBNamespace) new.
	url := 'http://docs.jquery.com/action/raw/UI/API/1.7.2/'.
	comment := [ :input |
		(String with: (Character value: 34)) , ((((input copyWithRegex: '<(li|br/?)>' matchesReplacedWith: (String with: Character cr)) copyWithRegex: '<[^>]+>' matchesReplacedWith: '') copyReplaceAll: (String with: (Character value: 34)) with: '''') copyReplaceAll: '''''' with: '''') , (String with: (Character value: 34)) ].
	#('Draggable' 'Droppable' 'Resizable' 'Selectable' 'Sortable' 'Accordion' 'Datepicker' 'Dialog' 'Progressbar' 'Slider' 'Tabs' ) do: [ :id |
		| stream string class matcher tokens argument dictionary removals selector source |

		' fetch documentation '.
		stream := (Smalltalk at: #HTTPSocket) httpGet: url , id.
		stream isString ifTrue: [ self error: stream ].
		string := (stream contents
			replaceAll: Character cr with: Character space)
			replaceAll: Character lf with: Character space.

		' prepare class '.
		removals := Set new.
		class := model classNamed: ('JQ' , id) asSymbol.
		class isNil ifTrue: [ self error: 'Class not found JQ' , id ].
		class selectors do: [ :rselector |
			((class protocolsFor: rselector)
				anySatisfy: [ :each | each endsWith: '-generated' ])
					ifTrue: [ removals add: rselector ] ].

		' generate options '.
		matcher := '\{\{UIAPIPluginOption\|' asRegex.
		matcher matchesIn: string do: [ :match |
			tokens := string copyFrom: (matcher subEnd: 1) first to: string size.
			tokens := ((tokens readStream upToAll: '}}') findTokens: $|)
				collect: [ :each | each withBlanksCondensed ].
			argument := ((tokens at: 3)
				copyReplaceAll: ',' with: 'Or')
				select: [ :each | each isAlphaNumeric ].
			argument := (argument first isVowel
				ifTrue: [ 'an' ] ifFalse: [ 'a' ]) , argument.
			selector := ((tokens at: 2) , ':') asSymbol.
			source := selector , ' ' , argument , '
	' , (comment value: (tokens at: 5)) , '

	self optionAt: ' , (tokens at: 2) printString , ' put: ' , argument.
			removals remove: selector ifAbsent: [ ].
			(class sourceCodeFor: selector) = source
				ifFalse: [ class compile: source classified: #'options-generated' ] ].

		' generate events '.
		matcher := '\{\{(UIAPIPluginEvent|UIAPIPluginDatepickerEvent)\|' asRegex.
		matcher matchesIn: string do: [ :match |
			tokens := string copyFrom: (matcher subEnd: 1) first to: string size.
			dictionary := Dictionary new.
			((tokens readStream upToAll: '}}') findTokens: $|) do: [ :each |
				dictionary
					at: (each copyUpTo: $=) withBlanksCondensed asLowercase
					put: (each copyAfter: $=) withBlanksCondensed ].
			((dictionary includesKey: 'event') and: [ dictionary includesKey: 'description' ]) ifTrue: [
				selector := ((((dictionary at: 'event') beginsWith: 'on')
					ifTrue: [ dictionary at: 'event' ]
					ifFalse: [ 'on' , (dictionary at: 'event') capitalized ]) , ':') asSymbol.
				source := selector , ' anObject
	' , (comment value: (dictionary at: 'description')) , '

	self optionAt: ' , (dictionary at: 'event') printString , ' put: anObject asFunction'.
				removals remove: selector ifAbsent: [ ].
				(class sourceCodeFor: selector) = source
					ifFalse: [ class compile: source classified: #'events-generated' ] ] ].
			
		' generate methods '.
		matcher := '\{\{UIAPIPluginMethod\|' asRegex.
		matcher matchesIn: string do: [ :match |
			tokens := string copyFrom: (matcher subEnd: 1) first to: string size.
			Transcript show: class name; show: (tokens readStream upToAll: '}}'); cr; cr ].

		' remove methods not present anymore '.
		removals do: [ :rselector | class removeMethod: rselector ] ].

	' open changes '.
	model changes open"
	
	self error: 'comment only'