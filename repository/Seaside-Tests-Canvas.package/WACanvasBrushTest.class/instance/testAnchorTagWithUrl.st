testing-tags-anchors
testAnchorTagWithUrl
	| url string |
	url := WAUrl new.
	url
		hostname: 'www.seaside.st';
		addToPath: 'foo bar&zork<blah';
		addParameter: '1' value: nil;
		addParameter: '2' value: 123;
		addParameter: '3' value: 'foo bar&zork'.
	string := 'http://www.seaside.st/foo+bar%26zork%3Cblah?1&amp;2=123&amp;3=foo+bar%26zork'.
	self
		assert: [ :html | html anchor url: url; with: url ]
		gives: '<a href="' , string , '">' , string , '</a>'