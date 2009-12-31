private
callbackValue: anObject
	values isNil ifTrue: [^0].
	^self valuesAt: values size + 1 put: anObject