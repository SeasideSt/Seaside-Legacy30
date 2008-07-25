accessing
localValues: aDictionary
	| value |
	self allAttributes do: [ :each | 
		value := aDictionary at: each key ifAbsent: [ nil ].
		value isNil ifFalse: [ self valueAt: each key put: (each valueFromString: value) ] ]