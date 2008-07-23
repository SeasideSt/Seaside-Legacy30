ancestry
allAncestorsDo: aBlock
	| set |
	set := IdentitySet new.
	self allAncestorsDo: aBlock seen: set.
	^ set