actions
addConfiguration
	(name isNil or: [ name isEmpty ])
		ifTrue: [ self inform: 'You must enter a configuration-name.' ]
		ifFalse: [ self editConfiguration: (self sharedConfiguration named: name) ]