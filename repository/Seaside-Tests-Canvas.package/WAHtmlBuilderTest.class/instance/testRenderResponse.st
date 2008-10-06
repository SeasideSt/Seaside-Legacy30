testing
testRenderResponse
	| response |
	response := WARenderCanvas builder renderResponse: [ :html |
		html unorderedList: [
			html listItem: 'an item' ] ].
	self assert: response class = WAResponse.
	self assert: response status = 200.
	self assert: response contents contents = '<html><head><title></title></head><body><ul><li>an item</li></ul></body></html>'