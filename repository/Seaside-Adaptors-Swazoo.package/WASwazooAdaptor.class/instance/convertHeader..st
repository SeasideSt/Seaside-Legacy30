private-converting
convertHeader: aSwazooRequest
	| swazooFields fields |
	swazooFields := aSwazooRequest headers fields.
	fields := Dictionary new: swazooFields size.
	swazooFields keysAndValuesDo: [ :key :field |
		| value |
		value := String streamContents: [ :stream |
			field valuesAsStringOn: stream ].
		fields at: key asLowercase put: value ].
	^fields