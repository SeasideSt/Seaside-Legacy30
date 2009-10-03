actions
moveDown
	self isModify
		ifTrue: [ self moveDown: self selectedAdditions using: self expression additions ]
		ifFalse: [
			self isOverride
				ifTrue: [ self moveDown: self selectionsCurrent using: self expression value ] ]