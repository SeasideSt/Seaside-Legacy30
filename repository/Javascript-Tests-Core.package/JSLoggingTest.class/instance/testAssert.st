testing
testAssert
	self 
		assert: (self logger assert: true)
		equals: 'console.assert(true)'.
	self
		assert: (self logger assertTrue: true)
		equals: 'console.assertTrue(true)'.
	self 
		assert: (self logger assertFalse: false)
		equals: 'console.assertFalse(false)'.
	self
		assert: (self logger assertNull: nil)
		equals: 'console.assertNull(null)'.
	self
		assert: (self logger assertNotNull: 1)
		equals: 'console.assertNotNull(1)'