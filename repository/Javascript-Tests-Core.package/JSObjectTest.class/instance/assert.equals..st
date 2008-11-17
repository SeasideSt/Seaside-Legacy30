utilities
assert: anObject equals: aString
	self
		assert: anObject asJavascript = aString
		description: anObject asJavascript , ' expected to be ' , aString printString
		resumable: true