path
updateRoot: aHtmlRoot 
	| url |
	super updateRoot: aHtmlRoot.
	url := aHtmlRoot context actionUrl withParameter: 
			(aHtmlRoot context callbacks store: (WAActionCallback on: [ self component answer ] )).
	aHtmlRoot meta 
		redirectAfter: self delay
		to: url seasideString