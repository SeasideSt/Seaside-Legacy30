accessing-dynamic
responseFactory
	"Answer a response factory configured in the closest handler."
	
	^ (self entryPoint isNil
		ifTrue: [ WAResponseFactory ]
		ifFalse: [ self entryPoint responseFactory ])
			on: self