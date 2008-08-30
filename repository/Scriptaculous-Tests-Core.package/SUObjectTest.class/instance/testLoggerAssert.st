testing-logging
testLoggerAssert
	| logger |
	logger :=self logger assert: true.
	self assert: logger equals: 'console.assert(true)'.

	logger := self logger assertTrue: true.
	self assert: logger equals: 'console.assertTrue(true)'.

	logger := self logger assertFalse: false.
	self assert: logger equals: 'console.assertFalse(false)'.

	logger := self logger assertNull: nil.
	self assert: logger equals: 'console.assertNull(null)'.

	logger := self logger assertNotNull: true.
	self assert: logger equals: 'console.assertNotNull(true)'