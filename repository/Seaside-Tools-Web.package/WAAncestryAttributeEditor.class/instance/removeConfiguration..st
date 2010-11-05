actions
removeConfiguration: aConfig
	| myApplication authFilter |
	(aConfig isKindOf: WAAuthConfiguration) ifTrue: [
		myApplication := self myApplication.
		authFilter := myApplication filters detect: [ :each | each isKindOf: WAAuthenticationFilter ] ifNone: [ nil ].
		authFilter isNil ifFalse: [
			myApplication 
				preferenceAt: #login
				put: nil.
			myApplication 
				preferenceAt: #passwordHash
				put: nil.
			myApplication removeFilter: authFilter ] ].
	self configuration removeParent: aConfig