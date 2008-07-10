converting
valueFromString: aString
	^ aString isEmptyOrNil ifFalse:
		[SeasidePlatformSupport hashString: aString]