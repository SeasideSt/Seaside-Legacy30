processing
updateRoot: aHtmlRoot
	| callbacks url |
	callbacks := WACallbackRegistry context: aHtmlRoot context owner: self.
	url := aHtmlRoot context actionUrl withParameter: (callbacks registerActionCallback: [ [ self answer: self go ] repeat ]).
	self session redirectTo: url