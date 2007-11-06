accessing
basePath
	^ self parent isNil
		ifTrue: [self name isEmpty
				ifTrue: ['']
				ifFalse: ['/' , self name]]
		ifFalse: [self parent basePath , '/' , self name]