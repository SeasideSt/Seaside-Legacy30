values
valueForAttribute: anAttribute consider: aSet cache: aDictionary
	| collection set |
	collection := self configuration inheritedValueForAttribute: anAttribute consider: aSet cache: aDictionary.
	
	collection isNil ifTrue: [ collection := anAttribute default ].
	collection isNil ifTrue: [ collection := Set new ].
	
	set := collection asSet.
	set addAll: self additions.
	self removals do: [ :each | set remove: each ifAbsent: [] ].
	
	^ set