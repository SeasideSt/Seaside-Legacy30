copying
withParameter: aString value: valueString
	^ self copy
		addParameter: aString value: valueString;
		yourself