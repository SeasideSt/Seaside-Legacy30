accessing
resourceUrl: anObject
	resourceUrl := anObject ifNotNil: [ :object | object seasideUrl ]