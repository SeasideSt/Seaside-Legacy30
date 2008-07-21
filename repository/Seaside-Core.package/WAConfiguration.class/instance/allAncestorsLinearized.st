ancestry
allAncestorsLinearized
	| temp linear |
	temp := OrderedCollection new.
	linear := OrderedCollection new.
	self addAncestorsTo: temp linearization: linear.
	^ linear removeFirst; asArray