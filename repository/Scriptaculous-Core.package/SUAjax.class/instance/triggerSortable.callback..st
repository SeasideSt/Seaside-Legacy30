triggers
triggerSortable: aString callback: aBlock
	self
		callback: [ :value |
			aBlock value: ((value findTokens: $,) collect: [ :each |
				canvas context callbacks at: each ifAbsent: [ nil ] ]) ]
		value: (SUSortable new id: aString; sequence)