*prototype-core
initializeWithIterator: aBlock 
	aBlock value: (PTFactory 
		on: self canvas
		using: [ :each | 
			(each respondsTo: #id:)
				ifTrue: [ each id: (JSStream argument: 0) ].
			self add: each ])