private
asSelector: aFilename
	| mainPart extension |
	mainPart := (aFilename copyUpToLast: $.)
				reject: [:each | each isAlphaNumeric not].
	[mainPart first isDigit]
		whileTrue: [mainPart := mainPart allButFirst].
	extension := (aFilename copyAfterLast: $.) asLowercase capitalized.
	^ (mainPart , extension) asSymbol