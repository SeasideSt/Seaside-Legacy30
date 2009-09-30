testing
testPrintStringBase
	self assert: ((15 printStringBase: 16) = 'F').
	self assert: ((16 printStringBase: 16) = '10').