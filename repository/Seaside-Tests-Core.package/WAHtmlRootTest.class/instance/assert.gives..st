private
assert: aBlock gives: aString
	| html |
	html := WARenderCanvas builder
		callbackOwner: self;
		fullDocument: true;
		rootBlock: aBlock;
		render: [ :canvas | ].
	self assert: html = ('<html><head>', aString, '</head><body></body></html>')