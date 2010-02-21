actions
close: aHtmlRoot on: aDocument
	| attributes |
	attributes := WAHtmlAttributes new.
	attributes at: 'type' put: 'text/javascript'.
	aDocument openTag: 'script' attributes: attributes.
	aDocument nextPutAll: '/*<![CDATA[*/document.observe("dom:loaded",function(){'.
	scripts 
		do: [ :each | aDocument nextPutAll: each greaseString ]
		separatedBy: [ aDocument nextPut: $; ].
	aDocument nextPutAll: '});/*]]>*/'; closeTag: 'script'