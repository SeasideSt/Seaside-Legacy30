private
assertUserAgent: aString isInternetExplorer: aBoolean
	self userAgent: aString.
	WARenderCanvas builder
		render: [ :html |
			self assert: html form isInternetExplorer = aBoolean ]