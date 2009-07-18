accessing-dynamic
responseGenerator
	"Answer a ResponseGenerator as configured in the closest RequestHandler."

	^ (self entryPoint isNil 
		ifTrue: [ WAResponseGenerator ]
		ifFalse: [ self entryPoint responseGenerator ])
			on: self