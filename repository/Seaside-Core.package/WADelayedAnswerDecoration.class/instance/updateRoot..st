path
updateRoot: aRoot
	| callbacks url |
	callbacks := WACallbackRegistry context: aRoot context owner: self.
	url := aRoot context actionUrl withParameter: (callbacks registerActionCallback: [self component answer]).
	aRoot meta redirectAfter: self delay to: url toString