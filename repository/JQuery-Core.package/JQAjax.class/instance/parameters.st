parameters
parameters
	^ self optionAt: 'data' ifAbsentPut: [ WASmallDictionary new ]