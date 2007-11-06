accessing
password
	^ self authorization ifNotNilDo: [:auth | auth copyAfter: $:]