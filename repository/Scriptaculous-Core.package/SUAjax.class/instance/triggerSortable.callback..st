triggers
triggerSortable: aString callback: aBlock
	self
		callback: [ :value |
			aBlock value: ((value findTokens: $,) 
				collect: [ :each | canvas context callbacks passengerAt: each]) ]
		value: (SUSortable new
			id: aString;
			sequence)