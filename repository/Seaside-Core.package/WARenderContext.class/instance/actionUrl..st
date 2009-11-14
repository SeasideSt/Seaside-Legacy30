accessing
actionUrl: anObject
	actionUrl := anObject ifNotNil: [ :object | object seasideUrl ]