actions
openHandler: aHandler
	aHandler isNil ifTrue: [ ^ self ].
	self initializeOn: (aHandler isDispatcher
		ifFalse: [ aHandler parent ]
		ifTrue: [ aHandler ])