old
remoteAddressOf: aKomRequest
	"converts a Squeak address (ByteArray) to an IPv4 String"
	| remoteAddress |
	remoteAddress := aKomRequest remoteAddress.
	remoteAddress isString ifTrue: [
		"so apparently someone has a new VM with IPv6 support"
		^remoteAddress ].
	
	^String streamContents: [ :stream |
		remoteAddress
			do: [ :each | stream print: each ]
			separatedBy: [ stream nextPut: $. ] ]