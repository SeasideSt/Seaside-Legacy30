utilities
assert: aBlock renders: aString 
	| html |
	html := WARenderCanvas builder
		documentClass: JSDocument;
		fullDocument: true;
		render: aBlock.
	self assert: html = aString