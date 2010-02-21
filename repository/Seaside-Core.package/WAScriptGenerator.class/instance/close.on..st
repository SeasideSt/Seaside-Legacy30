actions
close: aRoot on: aDocument
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	aDocument openTag: 'script' attributes: attributes.
	aDocument nextPutAll: '/*<![CDATA[*/function onLoad(){'.
	scripts 
		do: [ :each | aDocument nextPutAll: each greaseString ]
		separatedBy: [ aDocument nextPut: $; ].
	aDocument nextPutAll: '};/*]]>*/'; closeTag: 'script'