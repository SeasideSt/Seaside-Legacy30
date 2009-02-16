private
basicStop
	service ifNotNil: [ service unregister ].
	service := nil