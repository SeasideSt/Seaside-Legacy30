*seaside-development
hasLocalValueForAttribute: anAttribute
	self expressionAt: anAttribute key ifAbsent: [^ false].
	^ true