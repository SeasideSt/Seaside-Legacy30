request handling
fieldsAt: key ifPresent: aBlock
	^ self currentRequest at: key ifPresent: aBlock