actions
logon
	user isEmptyOrNil
		ifTrue:
			[self inform: 'Nope !' onAnswer: [ :v | ]]
		ifFalse:
			[state := #ON.
			test ifTrue: [self inform: 'Logged on' onAnswer: [ :v | ]]]