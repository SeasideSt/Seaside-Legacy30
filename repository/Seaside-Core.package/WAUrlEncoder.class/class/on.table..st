instance creation
on: aStream table: anArray 
	^ self 
		on: aStream
		codec: GRNullCodec new
		table: anArray