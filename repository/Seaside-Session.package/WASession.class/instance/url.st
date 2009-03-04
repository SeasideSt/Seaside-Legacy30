accessing
url
	| url |
	url := (self application useCookies and: [ self sessionCookiePresent ])
			ifTrue: [ self application baseUrl ]
			ifFalse: [ self application urlFor: self ].
	url takeServerParametersFromRequest: self requestContext request.
	jumpTo isNil
		ifFalse: [ url fragment: jumpTo ].
	^ url