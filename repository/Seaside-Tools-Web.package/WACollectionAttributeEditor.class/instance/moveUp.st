actions
moveUp
	self isModify
		ifTrue: [ self moveUp: self selectedAdditions using: self expression additions ]
		ifFalse: [
			self isOverride
				ifTrue: [ self moveUp: self selectionsCurrent using: self expression value ] ]