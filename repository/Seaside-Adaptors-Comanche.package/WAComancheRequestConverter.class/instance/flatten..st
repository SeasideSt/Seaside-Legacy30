old
flatten: aDictionary
	^(aDictionary isKindOf: HttpFormDictionary)
		ifTrue: [
			| result |
			result := Dictionary new.
			aDictionary keysAndValuesDo: [ :key :value |
				value size = 1
					ifTrue: [ result at: key put: value first  ]
					ifFalse: [ result at: key put: value ] ].
			result ]
		ifFalse: [ aDictionary copy ]