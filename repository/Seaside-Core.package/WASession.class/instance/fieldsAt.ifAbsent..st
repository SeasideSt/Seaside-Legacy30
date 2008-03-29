request handling
fieldsAt: key ifAbsent: aBlock
	^ self currentRequest at: key ifAbsent: aBlock