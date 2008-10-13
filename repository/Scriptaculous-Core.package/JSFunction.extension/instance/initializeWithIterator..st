*scriptaculous-core
initializeWithIterator: aBlock 
	aBlock value: (SUFactory 
		on: self canvas
		using: [ :each | 
			(each respondsTo: #id:)
				ifTrue: [ each id: (JSStream argumentAt: 1) ].
			self add: each ])