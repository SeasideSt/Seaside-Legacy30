accessing
pusher: aPusher
	self url: (self canvas context actionUrl
		withParameter: self class headerField
		value: (self context session
			registerPusher: (pusher := aPusher)
			context: self canvas context))