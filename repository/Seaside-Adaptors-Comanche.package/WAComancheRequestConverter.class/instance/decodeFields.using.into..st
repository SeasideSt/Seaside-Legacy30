old
decodeFields: aDictionary using: aOneArgumentBlock into: aDictionaryMerger
	aDictionary keysAndValuesDo: [ :key :value |
		| decoded |
		decoded := (value isString)
			ifTrue: [ aOneArgumentBlock value: value ]
			ifFalse: [
				(value isCollection)
					ifTrue: [ value collect: [ :string |
						aOneArgumentBlock value: string ] ]
					ifFalse: [ value ] ].
		aDictionaryMerger at: key put: decoded ]