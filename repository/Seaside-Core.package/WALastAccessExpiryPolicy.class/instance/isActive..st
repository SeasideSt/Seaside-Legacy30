protocol
isActive: anExternalID
	| lastAccess |
	lastAccess := lastAccessTable at: anExternalID ifAbsent: [ Time totalSeconds ].
	^ (Time totalSeconds - lastAccess) < self timeout