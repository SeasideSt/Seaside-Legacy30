protocol
isActive
	^ self expired not and: [ self secondsSinceLastAccess < self timeoutSeconds ]