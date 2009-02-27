private
createHandlers
	^ super createHandlers , (Array 
		with: (WAApplication new
			preferenceAt: #resourceBaseUrl put: self resourceBaseUrl;
			yourself)
		with: WASession new)