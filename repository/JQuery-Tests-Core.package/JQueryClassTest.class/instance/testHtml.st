testing-creation
testHtml
	self
		assert: (self jQuery html: [ :html | html div: 'foo' ])
		equals: self name , '("<div>foo</div>")'.
	self
		assert: (self jQuery html: [ :html | html div title: 'foo'; with: 'bar' ])
		equals: self name , '("<div title=\"foo\">bar</div>")'