ancestry
allAncestors
	"As it happens, the 'seen' set gives us the result we need"
	| set |
	set := IdentitySet new.
	self allAncestorsDo: [ :each | "nothing" ] seen: set.
	^ set
	