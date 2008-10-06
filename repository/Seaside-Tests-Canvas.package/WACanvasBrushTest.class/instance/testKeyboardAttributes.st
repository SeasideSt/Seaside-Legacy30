testing-attributes
testKeyboardAttributes
	self
		assert: [ :html | html anchor accessKey: $a ]
		gives: '<a accesskey="a" href="javascript:void(0)"></a>'.
	self
		assert: [ :html | html anchor tabIndex: 3 ]
		gives: '<a tabindex="3" href="javascript:void(0)"></a>'