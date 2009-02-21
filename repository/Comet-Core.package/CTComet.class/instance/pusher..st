accessing
pusher: aPusher
	self url: (self canvas actionUrl
		withParameter: self class headerField
		value: (self filter
			registerPusher: (pusher := aPusher)
			context: self canvas context))