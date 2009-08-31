initialization
initialRequest: aRequest
	| className consumer |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	consumer atEnd ifTrue: [ ^self ].
	className := consumer next.
	classes do: [ :each |
		"#seasideString is required because of Symbol <-> String comparison"
		each name seasideString = className
			ifTrue: [ self selected: each ] ]