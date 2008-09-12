private
writeOnLoadOn: aDocument 
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes 
		at: 'type'
		put: 'text/javascript'.
	aDocument 
		openTag: 'script'
		attributes: attributes
		closed: false.
	aDocument nextPutAll: '/*<![CDATA[*/function onLoad(){'.
	self requestContext loadScripts 
		do: [ :each | aDocument nextPutAll: each seasideString ]
		separatedBy: [ aDocument nextPutAll: ';' ].
	aDocument nextPutAll: '}/*]]>*/'.
	aDocument closeTag: 'script'