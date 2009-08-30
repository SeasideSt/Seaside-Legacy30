requests
ensureAuthorInitialsWith: aOneArgumentBlock
	"Makes sure the author initials for the image are set.
	aOneArgumentBlock is called with a qestion string as an argument when the initials are not set, it answers the initials"
	
	(Smalltalk version beginsWith: 'Pharo')
		ifTrue: [
			"Special Pharo code path to avoid deprecation"
			| author |
			author := Smalltalk at: #Author.
			author isNil
				ifTrue: [ ^ self error: 'unsupported Pharo version' ].
			author initialsPerSe isEmpty
				ifTrue: [ author initials: (aOneArgumentBlock value: 'Please enter your initials:') ] ]
		ifFalse: [
			Utilities authorInitialsPerSe isEmpty
				ifTrue: [ Utilities setAuthorInitials: (aOneArgumentBlock value: 'Please enter your initials:') ] ]