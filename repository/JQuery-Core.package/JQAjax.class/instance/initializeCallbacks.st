initialization
initializeCallbacks
	(self options includesKey: 'url') 
		ifTrue: [ ^ self ].
	self url: owner canvas context actionUrl withoutParameters.
	owner canvas context actionUrl parameters 
		keysAndValuesDo: [ :key :value | self addParameter: key value: value ]