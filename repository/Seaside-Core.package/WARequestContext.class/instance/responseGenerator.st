accessing-dynamic
responseGenerator
	"Answer a response generator as configured in the closest handler."

	^ (self entryPoint isNil 
		ifTrue: [ WAResponseGenerator ]
		ifFalse: [ self entryPoint responseGenerator ])
			on: self