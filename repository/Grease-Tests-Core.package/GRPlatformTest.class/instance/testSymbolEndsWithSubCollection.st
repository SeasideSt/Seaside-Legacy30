tests
testSymbolEndsWithSubCollection
	self assert: (#aaabbbcc endsWithSubCollection: #cc).
	self deny: (#aaabbbcc endsWithSubCollection: #d)