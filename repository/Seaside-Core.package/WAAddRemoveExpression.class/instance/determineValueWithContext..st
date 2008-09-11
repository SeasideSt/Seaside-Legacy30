values
determineValueWithContext: aContext
	| collection set |
	collection := self configuration inheritedValueAt: self key context: aContext.
	
	collection isNil ifTrue: [ collection := aContext attribute default ].
	collection isNil ifTrue: [ collection := Array new ].
	
	set := Set withAll: collection. 
	self removals do: [ :each | set remove: each ifAbsent: [] ].
	set addAll: self additions.
	
	^ set