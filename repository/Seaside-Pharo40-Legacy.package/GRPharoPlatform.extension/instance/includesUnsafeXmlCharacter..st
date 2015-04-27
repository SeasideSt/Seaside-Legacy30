*Seaside-Pharo40-Legacy
includesUnsafeXmlCharacter: aString
	^ aString isWideString "use slow fallback for WideStrings"
		or: [ (ByteString findFirstInString: aString inSet: XmlTable startingAt: 1) ~= 0 ]