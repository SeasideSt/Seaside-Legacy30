public
close
	| session attributes |
	session := WACurrentSession value.
	(session isNil or: [ session onLoadScripts isEmpty ])
		ifTrue: [ ^ self ].
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	self openTag: 'script' attributes: attributes.
	stream nextPutAll: '/*<![CDATA[*/'.
	session onLoadScripts
		do: [ :each | stream nextPutAll: each toString ]
		separatedBy: [ stream nextPut: $; ].
	stream nextPutAll: '/*]]>*/'.
	self closeTag: 'script'.
	session clearLoadScripts