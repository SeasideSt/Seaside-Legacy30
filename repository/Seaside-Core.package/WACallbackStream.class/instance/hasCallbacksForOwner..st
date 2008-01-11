testing
hasCallbacksForOwner: anObject
	"Answer true if the receiving stream has more callbacks for the owner anObject. This method considers callbacks without owner to be valid as well."

	| owner |
	callbacks atEnd ifTrue: [ ^ false ].
	owner := callbacks peek owner.
	^ owner == anObject or: [ owner isNil ]