actions
addConfiguration
	(name isNil or: [ name isEmpty ])
		ifTrue: [ ^ self inform: 'You must enter a path-name.' ].
	self editConfiguration: (self sharedConfiguration named: name)