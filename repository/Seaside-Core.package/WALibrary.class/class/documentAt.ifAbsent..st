accessing
documentAt: aFilename ifAbsent: aBlock
	^self default
		documentAt: aFilename
		ifAbsent: aBlock