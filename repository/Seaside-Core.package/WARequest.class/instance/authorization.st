private
authorization
	^ (self headerAt: 'Authorization' ifAbsent: [self headerAt: 'authorization'])
		ifNotNilDo: [:auth | self decodeAuthorization: auth]