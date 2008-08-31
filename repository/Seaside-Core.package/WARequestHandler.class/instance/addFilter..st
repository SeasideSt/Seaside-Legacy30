filters
addFilter: aFilter
	"Add aFilter to the receiver. Answer the filter added."

	| previous current |
	previous := nil.
	current := self filter.
	[ current = self ] whileFalse: [
		previous := current.
		current := current next ].
	aFilter next: current.
	previous isNil
		ifTrue: [ self filter: aFilter ]
		ifFalse: [ previous next: aFilter ].
	^ aFilter