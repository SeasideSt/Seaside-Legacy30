private
basicStop
	service isNil
		ifFalse: [ service unregister ].
	service := nil