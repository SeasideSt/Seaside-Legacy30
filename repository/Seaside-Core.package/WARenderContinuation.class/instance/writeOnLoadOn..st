private
writeOnLoadOn: aDocument
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	aDocument openTag: 'script' attributes: attributes closed: false.
	aDocument nextPutAll: '/*<![CDATA[*/function onLoad(){'.
	self session onLoadScripts
		do: [ :each | aDocument nextPutAll: each displayString ]
		separatedBy: [ aDocument nextPutAll: ';' ].
	aDocument nextPutAll: '}/*]]>*/'.
	aDocument closeTag: 'script'.
	self session clearLoadScripts