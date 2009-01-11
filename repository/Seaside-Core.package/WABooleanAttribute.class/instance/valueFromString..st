converting
valueFromString: aString
	^ aString = 'true'
		ifTrue: [ true ]
		ifFalse: [
			aString = 'false'
				 ifTrue: [ false ]
				 ifFalse: [ WAIllegalArgumentError signal: 'Invalid value for boolean attribute' ] ]