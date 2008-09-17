accessing
lastAccess
	^ lastAccess ifNil: [ lastAccess := Time totalSeconds ]