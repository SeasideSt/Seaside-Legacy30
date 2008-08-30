utilities
assert: aBlock renders: aString 
	| html |
	html := WARenderCanvas builder
		documentClass: SUDocument;
		callbackOwner: self;
		fullDocument: true;
		render: aBlock.
	self assert: html = aString