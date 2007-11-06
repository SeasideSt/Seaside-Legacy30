accessing
localValues: aDictionary
	self allAttributes do:
		[:attr | (aDictionary at: attr key ifAbsent: [nil])
			ifNotNilDo: [:string | self valueAt: attr key put: (attr valueFromString: string)]]