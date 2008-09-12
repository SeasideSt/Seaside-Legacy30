accessing
delegations
	| delegations |
	delegations := OrderedCollection new.
	self allDecorationsDo: [:ea | ea isDelegation ifTrue: [delegations add: ea]].
	^ delegations