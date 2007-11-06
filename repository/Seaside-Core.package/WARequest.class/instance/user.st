accessing
user
	^ self authorization ifNotNilDo: [:auth | auth copyUpTo: $:]