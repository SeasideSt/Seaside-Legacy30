initialization
initialRequest: aRequest
	| className relativePath |
	super initialRequest: aRequest.
	relativePath := self application baseUrl relativeTo: aRequest url.
	relativePath isEmpty ifTrue: [ ^self ].
	className := relativePath first.
	navigation components do: [ :each |
		"#seasideString is required because of Symbol <-> String comparison"
		each value class name seasideString = className
			ifTrue: [ navigation select: each key ] ]