private
defaultUrl
	^ self canvas actionUrl
		addParameter: self class headerField
		value: self pusher id