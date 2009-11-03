tests
testDeprecatedApi
	| exception seen |
	exception := seen := nil.
	
	[ self 
		greaseDeprecatedApi: 'WAPlatformExceptionTest>>#testDeprecatedApi'
		details: 'Message in a bottle.'.
	seen := true ] 
		on: GRDeprecatedApiNotification
		do: 
			[ :notification | 
			exception := notification.
			exception resume.
			seen := false ].
	self assert: seen.
	self assert: exception notNil.
	self assert: exception messageText = 'WAPlatformExceptionTest>>#testDeprecatedApi'.
	self assert: exception details = 'Message in a bottle.'