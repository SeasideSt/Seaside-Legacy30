values
hasLocalValueForAttribute: anAttribute
	self localValueAt: anAttribute key ifAbsent: [^ false].
	^ true