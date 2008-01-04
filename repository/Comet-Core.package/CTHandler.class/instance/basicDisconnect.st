private
basicDisconnect
	socket ifNil: [ ^ self ].
	socket destroy.
	socket := nil