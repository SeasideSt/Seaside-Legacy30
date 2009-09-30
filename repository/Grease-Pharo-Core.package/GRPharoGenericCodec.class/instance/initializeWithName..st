initialization
initializeWithName: aString 
	self initialize.
	name := aString.
	urlCodec := (self class latin1CodecNames includes: aString) 
		ifFalse: [ GRCodec forEncoding: 'utf-8' ]
		ifTrue: [ self ]