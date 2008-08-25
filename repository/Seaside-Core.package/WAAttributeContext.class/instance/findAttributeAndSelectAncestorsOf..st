private
findAttributeAndSelectAncestorsOf: aConfiguration
	| found |
	(ancestorsWithAttribute includes: aConfiguration) ifTrue: [ ^ true ].
			
	aConfiguration canDefineAttributes ifTrue: [
		aConfiguration localAttributeAt: self key ifPresent:
			[ :attr |
			attribute := attr.
			ancestorsWithAttribute add: aConfiguration.
			^ true ] ].
		
	found := false.
	aConfiguration parents do: [ :each | found := found | (self findAttributeAndSelectAncestorsOf: each) ].
	
	found ifTrue: [ ancestorsWithAttribute add: aConfiguration ].
	
	^ found