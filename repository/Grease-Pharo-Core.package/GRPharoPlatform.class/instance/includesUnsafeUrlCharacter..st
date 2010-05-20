testing
includesUnsafeUrlCharacter: aString
	^ aString isWideString "use slow fallback for WideStrings"
		or: [ (ByteString findFirstInString: aString inSet: UrlTable startingAt: 1) ~= 0 ]