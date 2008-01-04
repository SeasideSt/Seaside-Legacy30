private
defaultUrl
	^ self canvas context actionUrl
		addParameter: self class headerField
		value: self pusher id