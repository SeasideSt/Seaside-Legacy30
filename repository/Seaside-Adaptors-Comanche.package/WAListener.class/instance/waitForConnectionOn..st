private
waitForConnectionOn: aSocket
	| connection |
	connection := (aSocket waitForAcceptFor: 10)
		ifNil: [ ^ self ].
	self processConnection: connection