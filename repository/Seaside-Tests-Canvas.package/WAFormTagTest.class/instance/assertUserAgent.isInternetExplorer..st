private
assertUserAgent: aString isInternetExplorer: aBoolean
	self userAgent: aString.
	WARenderCanvas builder
		callbackOwner: self;
		render: [ :html |
			self assert: html form isInternetExplorer = aBoolean ]