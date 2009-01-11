rendering
renderDoNotUseWithinCallbackOn: html
	html anchor
		callback: [ self session addLoadScript: nil ];
		with: 'foo'