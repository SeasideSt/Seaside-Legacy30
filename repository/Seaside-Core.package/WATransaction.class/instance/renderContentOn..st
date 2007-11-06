rendering
renderContentOn: html
	active
		ifTrue: [ self renderOwnerOn: html ]
		ifFalse: [ self session pageExpired ]