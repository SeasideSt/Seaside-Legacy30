tests
testSymbolBeginsWithSubCollection
	self assert: (#aaabbbcc beginsWithSubCollection: #aa).
	self deny: (#aaabbbcc beginsWithSubCollection: #d)