public
close
	| context attributes |
	context := WACurrentContext value.
	(context isNil or: [ context loadScripts isEmpty ])
		ifTrue: [ ^ self ].
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	self openTag: 'script' attributes: attributes.
	stream nextPutAll: '/*<![CDATA[*/'.
	context loadScripts
		do: [ :each | stream nextPutAll: each toString ]
		separatedBy: [ stream nextPut: $; ].
	stream nextPutAll: '/*]]>*/'.
	self closeTag: 'script'