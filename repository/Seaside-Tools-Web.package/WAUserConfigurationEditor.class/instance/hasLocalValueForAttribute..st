attributes
hasLocalValueForAttribute: anAttribute
	self configuration expressionAt: anAttribute key ifAbsent: [^ false].
	^ true