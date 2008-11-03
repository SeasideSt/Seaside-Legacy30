visiting
visitDecoration: aDecoration
	| next |
	self client visit: aDecoration.

	"Avoid infinite recursion by making sure we don't call #acceptDecorated:
	on a Decoration's #next (it might be the owning Component)."
	next := aDecoration next.
	aDecoration children do: [ :each |
		(each == next)
			ifFalse: [ self visit: each ] ].
		
	next accept: self.