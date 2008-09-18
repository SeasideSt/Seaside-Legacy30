protocol
isActive
	^ self secondsSinceLastAccess < self timeoutSeconds