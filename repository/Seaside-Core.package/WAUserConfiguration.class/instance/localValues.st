accessing
localValues
	| dict |
	dict := Dictionary new.
	self allAttributes do:
		[:attr | (self localValueAt: attr key ifAbsent: [nil])
			ifNotNilDo: [:value | dict at: attr key put: (attr stringForValue: value)]].

	^ dict