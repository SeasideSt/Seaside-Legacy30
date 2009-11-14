accessing
actionBaseUrl: anObject
	actionBaseUrl := anObject ifNotNil: [ :object | object seasideUrl ]