testing
testAnswer
	self assert: (WADynamicVariable use: 'value' during: [ true ])