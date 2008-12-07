initialization
initialRequest: aRequest
	| relativePath className |
	super initialRequest: aRequest.
	relativePath := self application baseUrl relativeTo: aRequest url.
	relativePath isEmpty ifTrue: [ ^self ].
	className := relativePath first.
	classes do: [ :each |
		"#seasideString is required because of Symbol <-> String comparison"
		each name seasideString = className
			ifTrue: [ self selected: each ] ]