triggers
triggerForm: aString
	"Serialize a complete from and trigger all its associated callbacks. Note that the callbacks of submit buttons are ignored to preserve consistency, use the normal callback to trigger specific code evaluation."

	self parameters copy do: [ :each |
		(each isVariableBinding and: [ each key beginsWith: '_' ])
			ifTrue: [ self parameters remove: each ] ].
	self addParameter: (SUForm new
		id: aString;
		serialize)