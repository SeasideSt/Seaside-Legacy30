asserting
assert: anObject equalsIgnoreCase: aString
	self
		assert: anObject asJavascript asLowercase = aString asLowercase
		description: anObject asJavascript , ' expected to be ' , aString greaseString
		resumable: true