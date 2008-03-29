accessing
actionUrlForKey: aString
	| url |
	url := self application urlForRequestHandler: self.
	self useSessionCookie
		ifTrue: [ url parameters removeKey: self application handlerField ].
	url takeServerParametersFromRequest: currentRequest.
	url addParameter: self actionField value: aString.
	jumpTo ifNotNil: [ url fragment: jumpTo ].
	^ url