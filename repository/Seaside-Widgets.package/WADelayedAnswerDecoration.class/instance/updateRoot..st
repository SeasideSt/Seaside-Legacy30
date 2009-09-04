path
updateRoot: aRoot 
	| url |
	super updateRoot: aRoot.
	url := aRoot context actionUrl withParameter: 
			(aRoot context callbacks store: (WAActionCallback on: [ self component answer ] )).
	aRoot meta 
		redirectAfter: self delay
		to: url seasideString