actions
previous
	| nextIndex |
	nextIndex := (self selectionIndex + classes size - 2 \\ classes size) + 1.
	self activate: (classes at: nextIndex)