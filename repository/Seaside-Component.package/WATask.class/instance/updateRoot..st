rendering
updateRoot: aHtmlRoot
	| callbacks url |
	callbacks := WACallbackRegistry context: aHtmlRoot context.
	url := aHtmlRoot context actionUrl 
		withParameter: (callbacks 
			registerActionCallback: [ [ self answer: self go ] repeat ]).
	self session redirectTo: url