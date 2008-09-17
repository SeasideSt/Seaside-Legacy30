private
responseFactoryForContext: aRequestContext
	| entryPoint |
	entryPoint := aRequestContext entryPoint.
	^ entryPoint isNil
		ifFalse: [ entryPoint responseFactory ]
		ifTrue: [ WAResponseFactory ]