converting-internal
remoteAddressFor: aNativeRequest
	"Converts a Squeak address (ByteArray) to an IPv4 String."
	
	| remoteAddress |
	remoteAddress := aNativeRequest remoteAddress.
	remoteAddress isString 
		ifTrue: [ ^ remoteAddress ].
	^ String streamContents: [ :stream |
		remoteAddress
			do: [ :each | stream print: each ]
			separatedBy: [ stream nextPut: $. ] ]