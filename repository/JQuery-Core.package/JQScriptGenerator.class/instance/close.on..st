actions
close: aHtmlRoot on: aDocument
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	aDocument openTag: 'script' attributes: attributes.
	aDocument nextPutAll: '/*<![CDATA[*/'; nextPutAll: JQuery functionName; nextPutAll: '(function(){'.
	scripts 
		do: [ :each | aDocument nextPutAll: each greaseString ]
		separatedBy: [ aDocument nextPut: $; ].
	aDocument nextPutAll: '});/*]]>*/'; closeTag: 'script'