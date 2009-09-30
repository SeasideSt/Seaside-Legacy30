instance creation
stream: aStream 
	^ self 
		on: aStream
		codec: GRNullCodec new