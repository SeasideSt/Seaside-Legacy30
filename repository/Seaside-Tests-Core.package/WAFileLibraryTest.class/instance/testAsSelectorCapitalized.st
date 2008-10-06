testing
testAsSelectorCapitalized
	| library |
	library := WAStandardFiles new.
	self assert: (library asSelector: 'COMMENTS.TXT') = #COMMENTSTxt.
	self assert: (library asFilename: #COMMENTSTxt) = 'COMMENTS.txt'