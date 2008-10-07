rendering
updateRoot: aHtmlRoot
	| url |
	url := aHtmlRoot context actionUrl 
		withParameter: (aHtmlRoot context callbacks 
			registerActionCallback: [ [ self answer: self go ] repeat ]).
	self session redirectTo: url