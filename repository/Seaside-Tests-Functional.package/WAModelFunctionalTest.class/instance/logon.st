actions
logon
	user isEmptyOrNil
		ifTrue:
			[self inform: 'Nope !']
		ifFalse:
			[state := #ON.
			test ifTrue: [self inform: 'Logged on']]