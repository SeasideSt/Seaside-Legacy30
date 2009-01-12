accessing
entryPointAt: aString ifAbsent: aBlock
	^ self
		entryPointAt: (aString
			ifNil: [ ^ aBlock value ])
		with: [ :dispatcher :token |
			dispatcher entryPoints
				at: token
				ifAbsent: [ ^ aBlock value ] ]