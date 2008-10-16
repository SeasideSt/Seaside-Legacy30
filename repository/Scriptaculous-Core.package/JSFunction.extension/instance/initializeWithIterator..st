*scriptaculous-core
initializeWithIterator: aBlock 
	aBlock value: (SUFactory 
		on: self canvas
		using: [ :each | 
			(each respondsTo: #id:)
				ifTrue: [ each id: (JSStream argument: 0) ].
			self add: each ])