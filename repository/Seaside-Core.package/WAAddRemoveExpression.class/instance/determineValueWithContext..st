values
determineValueWithContext: aContext
	| collection set |
	collection := self configuration inheritedValueAt: self key context: aContext.
	
	collection isNil ifTrue: [ collection := aContext attribute default ].
	collection isNil ifTrue: [ collection := Set new ].
	
	set := collection asSet.
	set addAll: self additions.
	self removals do: [ :each | set remove: each ifAbsent: [] ].
	
	^ set