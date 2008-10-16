initialization
setOwner: anObject
	super setOwner: anObject.
	self url: anObject canvas context actionUrl withoutParameters.
	self addParameters: anObject canvas context actionUrl parameters