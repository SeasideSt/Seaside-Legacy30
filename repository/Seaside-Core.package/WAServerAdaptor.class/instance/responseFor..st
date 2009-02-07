converting
responseFor: aNativeRequest
	"Answer a response object for aNativeRequest."

	^ WABufferedResponse on: ((self codecFor: aNativeRequest)
		encoderFor: (WriteStream on: String new))