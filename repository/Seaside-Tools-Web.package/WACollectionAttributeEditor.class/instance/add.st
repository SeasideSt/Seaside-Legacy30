actions
add
	| currentValues filtered |
	currentValues := self currentValues.
	filtered := selections reject: [:each | currentValues includes: each].
	self isOverride
		ifTrue: [self expression value: self expression value asOrderedCollection , filtered]
		ifFalse: [
			self isModify
				ifTrue: [ self expression additions: self expression additions asOrderedCollection , filtered ] ].
			
	selectionsCurrent := self currentList select: [:each | filtered includes: each value].