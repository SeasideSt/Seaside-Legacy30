initialization
initialRequest: aRequest
	| className consumer |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	consumer atEnd ifTrue: [ ^self ].
	className := consumer next.
	navigation components do: [ :each |
		"#seasideString is required because of Symbol <-> String comparison"
		each value class name seasideString = className
			ifTrue: [ navigation select: each key ] ]