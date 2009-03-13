testing
testDeprecatedApi
	| exception seen |
	exception := seen := nil.
	
	[ self 
		seasideDeprecatedApi: 'WAExceptionsTest>>#testDeprecatedApi'
		details: 'Message in a bottle.'.
	seen := true ] 
		on: WADeprecatedApiNotification
		do: 
			[ :notification | 
			exception := notification.
			exception resume.
			seen := false ].
	self assert: seen.
	self assert: exception notNil.
	self assert: exception messageText = 'WAExceptionsTest>>#testDeprecatedApi'.
	self assert: exception details = 'Message in a bottle.'