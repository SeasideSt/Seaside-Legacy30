initialization
initializeCallbacks
	(self options includesKey: 'url') 
		ifTrue: [ ^ self ].
	self url: owner canvas context actionUrl withoutParameters.
	self addParameters: owner canvas context actionUrl parameters