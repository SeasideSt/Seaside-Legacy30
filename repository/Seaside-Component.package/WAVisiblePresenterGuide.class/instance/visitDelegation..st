visiting
visitDelegation: aDelegation
	| next  |
	self client visit: aDelegation.

	"A Delegation's #next is never visible"
	next := aDelegation next.
	aDelegation children do: [ :each |
		(each == next)
			ifFalse: [ self visit: each ] ].