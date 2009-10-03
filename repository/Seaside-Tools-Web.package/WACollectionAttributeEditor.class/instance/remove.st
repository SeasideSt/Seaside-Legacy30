actions
remove
	self isOverride
		ifTrue: [
			self expression value isEmpty
				ifTrue: [ self expression value: self selectionsCurrent ]
				ifFalse: [ self expression value removeAll: self selectionsCurrent ] ]
		ifFalse: [
			self isModify
				ifTrue: [ self expression additions removeAll: self selectedAdditions ] ]