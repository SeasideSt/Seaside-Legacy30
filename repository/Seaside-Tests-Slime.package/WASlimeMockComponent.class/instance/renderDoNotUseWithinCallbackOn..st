rendering
renderDoNotUseWithinCallbackOn: html
	html anchor
		callback: [ html document addLoadScript: nil ];
		with: 'foo'