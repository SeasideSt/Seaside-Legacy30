values
valueForAttribute: anAttribute consider: aSet cache: aDictionary
	aDictionary at: self ifPresent: [ :v | ^ v ].
	
	(anAttribute configuration == self) ifTrue: [ ^ aDictionary at: self put: nil ].
	
	self localValueAt: anAttribute key ifPresent:
		[ :value |
		^ aDictionary
			at: self
			put: (value valueForAttribute: anAttribute consider: aSet cache: aDictionary) ].
		
	^ aDictionary at: self put: (self inheritedValueForAttribute: anAttribute consider: aSet cache: aDictionary).