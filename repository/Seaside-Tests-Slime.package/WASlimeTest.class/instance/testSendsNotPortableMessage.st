testing
testSendsNotPortableMessage
	self 
		run: WASendsNotPortableMessageRule new
		selectors: #(someMessage)