initialization
setOwner: aQuery
	super setOwner: aQuery.
	self url: aQuery canvas context actionUrl withoutParameters.
	self addParameters: aQuery canvas context actionUrl parameters