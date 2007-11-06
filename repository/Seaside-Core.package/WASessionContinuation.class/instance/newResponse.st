creational
newResponse
	"Answer a new response object and assign the current request stream."

	| stream response |
	stream := self request responseStream.
	response := stream isNil
		ifTrue: [ WAResponse new ]
		ifFalse: [ WAStreamResponse on: stream ].
	^ response doNotCache