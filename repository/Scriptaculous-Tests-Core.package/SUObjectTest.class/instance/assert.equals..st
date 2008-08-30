utilities
assert: anObject equals: aString
	self
		assert: anObject asJavascript = aString
		description: anObject printString , ' expected to be ' , aString printString
		resumable: true