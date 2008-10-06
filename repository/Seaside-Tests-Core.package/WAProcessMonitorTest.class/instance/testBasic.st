testing
testBasic
	| result |
	result := monitor 
		critical: [ #pass ]
		ifError: [ :err | #fail ].
	self assert: result = #pass