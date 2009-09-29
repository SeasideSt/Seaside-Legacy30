accessing
baseUrl
	| url |
	url := super baseUrl.
	jumpTo isNil
		ifFalse: [ url fragment: jumpTo ].
	^ url