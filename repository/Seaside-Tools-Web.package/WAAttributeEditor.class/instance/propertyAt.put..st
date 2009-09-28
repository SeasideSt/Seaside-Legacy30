accessing
propertyAt: aSymbol put: anObject

	properties at: aSymbol put: anObject.
	self class updatePropertiesCacheFor: self