testing
testTerminate
	| result |
	result := monitor 
		critical: [ #pass ]
		ifError: [ :err | #fail ].
	result := monitor 
		critical: [ monitor terminate. #fail ]
		ifError: [ :err | #fail ].
	self assert: result isNil