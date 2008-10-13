testing-literals
testNumber
	self assert: (self parse: '0') = 0.
	self assert: (self parse: '1') = 1.
	self assert: (self parse: '12') = 12.
	self assert: (self parse: '-12') = -12.
	self assert: (self parse: '12.3') = 12.3.
	self assert: (self parse: '0.12') = 0.12.
	self assert: (self parse: '1e10') = 1.0e10.
	self assert: (self parse: '1.1e10') = 1.1e10.
	self assert: (self parse: '1.1e10') = 1.1e10.
	self assert: (self parse: '1.1e10') = 1.1e10.
	self assert: (self parse: '1.1e-10') = 1.1e-10