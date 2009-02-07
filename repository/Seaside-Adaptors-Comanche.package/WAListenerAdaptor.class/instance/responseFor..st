converting
responseFor: aSocketStream
	^ WAStreamedResponse on: (self codec encoderFor: aSocketStream)