accessing
queryFields
	"merge values with same key"
	| dict |
	dict := Dictionary new.
	self uri parameters keysAndValuesDo: [:k :v | | value |
		value := dict at: k ifAbsent: [].
		value isNil
			ifTrue: [dict at: k put: v]
			ifFalse: [value isString
						ifFalse: [value add: v]
						ifTrue: [ dict at: k put: (OrderedCollection with: value with: v) ] ] ].
	^dict