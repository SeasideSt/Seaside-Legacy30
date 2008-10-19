private
assert: aBlock gives: aString
	| html |
	html := WARenderCanvas builder
		fullDocument: true;
		rootBlock: aBlock;
		render: [ :canvas | ].
	self assert: html = ('<html><head>', aString, '</head><body></body></html>')