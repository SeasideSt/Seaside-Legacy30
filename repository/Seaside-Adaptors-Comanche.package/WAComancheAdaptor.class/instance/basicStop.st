private-controlling
basicStop
	service ifNotNil: [ service unregister ].
	service := nil