tests-literals
testStringMultiByte
	| multibyteString |
	multibyteString := String with: (Character value: 8364).
	self assert: multibyteString equals: '"', multibyteString, '"'.
