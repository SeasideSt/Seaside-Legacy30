testing-tags-anchors
testAnchorTag
	self
		assert: [ :html | html anchor ]
		gives: '<a href="javascript:void(0)"></a>'.
	self
		assert: [ :html | html anchor name: 'foo' ]
		gives: '<a name="foo"></a>'.
	self
		assert: [ :html | html anchor callback: [ ]; with: 'foo' ]
		gives: '<a href="/?1">foo</a>'.
	self
		assert: [ :html |
			html anchor callback: [ ]; with: 'foo'.
			html anchor callback: [ ]; with: 'bar' ]
		gives: '<a href="/?1">foo</a><a href="/?2">bar</a>'.
	self
		assert: [ :html |
			html anchor
				extraPath: 'zork';
				callback: [ ];
				with: 'foo'. ]
		gives: '<a href="/zork?1">foo</a>'.
	self
		assert: [ :html |
			html anchor
				extraParameters: 'zork';
				callback: [ ];
				with: 'foo'. ]
		gives: '<a href="/?zork&amp;1">foo</a>'