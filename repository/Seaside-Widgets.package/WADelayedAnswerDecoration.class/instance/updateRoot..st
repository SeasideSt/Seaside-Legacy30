path
updateRoot: anHtmlRoot 
	| url |
	super updateRoot: anHtmlRoot.
	url := anHtmlRoot context actionUrl withParameter:
				(anHtmlRoot context callbacks store:
					(WAActionCallback on: [ self decoratedComponent answer ])).
	anHtmlRoot meta 
		redirectAfter: self delay
		to: url greaseString