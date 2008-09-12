accessing
actionUrlForKey: aString
	| url |
	url := self application
		urlForRequestHandler: self
		addHandlerField: self useSessionCookie not.
	url takeServerParametersFromRequest: self requestContext request.
	url addParameter: self actionField value: aString.
	jumpTo ifNotNil: [ url fragment: jumpTo ].
	^ url