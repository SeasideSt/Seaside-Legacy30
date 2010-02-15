instance creation
withAll: aCollection
	^ (self new: aCollection size)
		addAll: aCollection;
		yourself