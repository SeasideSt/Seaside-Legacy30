values-private
valueAt: aSymbol context: aContext
	aContext at: self ifPresent: [ :v | ^ v ].
	
	(aContext isAttributeLocalOn: self) ifTrue: [ ^ aContext at: self put: nil ].
	
	self expressionAt: aContext key ifPresent:
		[ :expression |
		^ aContext
			at: self
			put: (expression determineValueWithContext: aContext configuration: self) ].
		
	^ aContext at: self put: (self inheritedValueAt: aSymbol context: aContext)