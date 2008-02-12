accessing
localValues
	| dictionary value |
	dictionary := Dictionary new.
	self allAttributes do: [ :each | 
		value := self localValueAt: each key ifAbsent: [ nil ].
		value isNil ifFalse: [ dictionary at: each key put: (each stringForValue: value) ] ].
	^ dictionary