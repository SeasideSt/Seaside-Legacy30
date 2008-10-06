testing
testAsSelectorCapitalized
	| library |
	library := WATestingFiles new.
	self assert: (library asSelector: 'COMMENTS.TXT') = #COMMENTSTxt.
	self assert: (library asFilename: #COMMENTSTxt) = 'COMMENTS.txt'