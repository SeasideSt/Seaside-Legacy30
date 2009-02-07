private
getFieldsOf: aSwazooRequest into: aDictionaryMerger
	aSwazooRequest queries do: [ :each |
		aDictionaryMerger at: each key put: (self url decode: each value) ]