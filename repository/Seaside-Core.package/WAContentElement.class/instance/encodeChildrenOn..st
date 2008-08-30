printing
encodeChildrenOn: aDocument 
	children isEmptyOrNil ifTrue: [ ^ self ].
	aDocument nextPutAll: '/*<![CDATA[*/'.
	children do: [ :each | aDocument nextPutAll: each seasideString ].
	aDocument nextPutAll: '/*]]>*/'