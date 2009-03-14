private
generate
	| model url classes stream string class matcher tokens argument dictionary |
	
	model := (Smalltalk at: #RBNamespace) new.
	url := 'http://docs.jquery.com/action/raw/UI/API/1.7/'.
	classes := #(
		'Draggable' 'Droppable' 'Resizable' 'Selectable' 'Sortable' 
		'Accordion' 'Datepicker' 'Dialog' 'Progressbar' 'Slider' 'Tabs' ).
	
	classes do: [ :id |
		stream := (Smalltalk at: #HTTPSocket) httpGet: url , id.
		stream isString ifTrue: [ self error: stream ].
		
		string := (stream contents
			replaceAll: Character cr with: Character space) 
			replaceAll: Character lf with: Character space.
	
		class := model classNamed: ('JQ' , id) asSymbol.
		class isNil ifTrue: [ self error: 'Class not found JQ' , id ].

		class selectors do: [ :selector |
			((class protocolsFor: selector) 
				anySatisfy: [ :each | each endsWith: '-generated' ])
					ifTrue: [ class removeMethod: selector ] ].
		
		matcher := '\{\{UIAPIPluginOption\|' asRegex.
		matcher matchesIn: string do: [ :match |
			tokens := string copyFrom: (matcher subEnd: 1) to: string size.
			tokens := ((tokens readStream upToAll: '}}') findTokens: $|) 
				collect: [ :each | each withBlanksCondensed ].
			argument := ((tokens at: 3) 
				copyReplaceAll: ',' with: 'Or')
				select: [ :each | each isAlphaNumeric ].
			argument := (argument first isVowel
				ifTrue: [ 'an' ] ifFalse: [ 'a' ]) , argument.
			class
				compile: (tokens at: 2) , ': ' , argument , '
	"' , (((tokens at: 5) copyReplaceAll: '"' with: '''') copyReplaceAll: '''''' with: '''') , '"
	
	self optionAt: ' , (tokens at: 2) printString , ' put: ' , argument
				classified: #'options-generated' ].

		matcher := '\{\{(UIAPIPluginEvent|UIAPIPluginDatepickerEvent)\|' asRegex.
		matcher matchesIn: string do: [ :match |
			tokens := string copyFrom: (matcher subEnd: 1) to: string size.
			dictionary := Dictionary new.
			((tokens readStream upToAll: '}}') findTokens: $|) do: [ :each |
				dictionary 
					at: (each copyUpTo: $=) withBlanksCondensed asLowercase
					put: (each copyAfter: $=) withBlanksCondensed ].
			((dictionary includesKey: 'event') and: [ dictionary includesKey: 'description' ]) ifTrue: [
				class
					compile: (((dictionary at: 'event') beginsWith: 'on') 
						ifTrue: [ dictionary at: 'event' ] 
						ifFalse: [ 'on' , (dictionary at: 'event') capitalized ]) , ': anObject
	"' , (((dictionary at: 'description') copyReplaceAll: '"' with: '''') copyReplaceAll: '''''' with: '''') , '"
	
	self optionAt: ' , (dictionary at: 'event') printString , ' put: anObject asFunction'
					classified: #'events-generated' ] ] ].
	
	model changes open