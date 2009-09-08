path
updateRoot: anHtmlRoot 
	| url |
	super updateRoot: anHtmlRoot.
	url := anHtmlRoot context actionUrl withParameter: 
			(anHtmlRoot context callbacks store: (WAActionCallback on: [ self component answer ] )).
	anHtmlRoot meta 
		redirectAfter: self delay
		to: url seasideString