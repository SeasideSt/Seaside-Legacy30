instance creation
on: aStream codec: aCodec table: anArray
	^ self basicNew initializeOn: aStream table: anArray codec: aCodec; yourself