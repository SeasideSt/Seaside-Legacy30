private
contentCodeBinaryFor: aByteArrayOrString 
	| methodCode |
	methodCode := GRPlatform current 
		asMethodReturningByteArray: aByteArrayOrString
		named: #dummyMethodName.
		
	^ methodCode copyAfter: $^