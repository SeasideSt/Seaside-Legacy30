testing
indexOfFirstUnsafeUrlCharacterIn: aString startingAt: startIndex
	^ aString isWideString "use slow fallback for WideStrings"
		ifTrue: [ startIndex ]
		ifFalse: [ ByteString findFirstInString: aString inSet: UrlTable startingAt: startIndex ]