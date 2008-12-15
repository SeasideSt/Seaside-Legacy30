testing-literals
testNumber
	self assert: (self parseNumber: '0') = 0.
	self assert: (self parseNumber: '1') = 1.
	self assert: (self parseNumber: '-1') = -1.
	self assert: (self parseNumber: '12') = 12.
	self assert: (self parseNumber: '-12') = -12.
	self assert: (self parseNumber: '12.3') = 12.3.
	self assert: (self parseNumber: '0.12') = 0.12.
	self assert: (self parseNumber: '1e10') = 1.0e10.
	self assert: (self parseNumber: '1.1e10') = 1.1e10.
	self assert: (self parseNumber: '1.1e10') = 1.1e10.
	self assert: (self parseNumber: '1.1e10') = 1.1e10.
	self assert: (self parseNumber: '1.1E10') = 1.1e10.
	self assert: (self parseNumber: '1.1e-10') = 0.00000000011s11.
	self assert: (self parseNumber: '1.1e+10') = 1.1e10.
	self assert: (self parseNumber: '1.1E-10') = 0.00000000011s11.
	self assert: (self parseNumber: '1.1E+10') = 1.1e10.
	self assert: (self parseNumber: '18446744073709551617') = 16r10000000000000001.
	self assert: (self parseNumber: '18446744073709551617.555') = 18446744073709551617.555s3.
	self assert: (self parseNumber: '-1.1') = -1.1s1.
	self assert: (self parseNumber: '0.1') = 0.1s1