initialization
initializeWithIterator: aBlock
	aBlock value: (SUFactory
		on: self canvas
		using: [ :each |
			(each respondsTo: #id:)
				ifTrue: [ each id: (SUStream argumentAt: 1) ].
			self add: each ])