testing
isOverride
	"Returns true if there is a value for the attribute on this configuration"
	self configuration expressionAt: self attribute key ifAbsent: [ ^ false ].
	^ true