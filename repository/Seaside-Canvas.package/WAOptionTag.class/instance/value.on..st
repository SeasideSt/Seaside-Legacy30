attributes
value: anObject on: aListTag
	self selected: (aListTag isSelected: anObject).
	self value: (aListTag valueFor: anObject)
	