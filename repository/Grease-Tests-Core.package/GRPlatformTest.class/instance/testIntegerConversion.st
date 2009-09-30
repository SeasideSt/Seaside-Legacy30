testing
testIntegerConversion

	"sending #day, #hour, #minute, #second to any Number is guaranteed to be a single unit"
	self assert: (5 day) days = 1.
	self assert: (5 hour) hours = 1.
	self assert: (5 minute) minutes = 1.
	self assert: (5 second) seconds = 1.
	"use #days, #hours, #minutes, #seconds to get proper multiples"
	self assert: (5 days) days = 5.
	self assert: (5 hours) hours = 5.
	self assert: (5 minutes) minutes = 5.
	self assert: (5 seconds) seconds = 5.