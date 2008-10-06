actions
next
	| nextIndex |
	nextIndex := self selectionIndex \\ classes size + 1.
	self activate: (classes at: nextIndex)
	