testing
testError
	| result |
	result := monitor
		critical: [ 1 / 0 ]
		ifError: [ :err | #pass ].
	self assert: result = #pass