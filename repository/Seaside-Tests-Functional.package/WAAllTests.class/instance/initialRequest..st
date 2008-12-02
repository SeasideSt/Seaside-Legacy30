initialization
initialRequest: aRequest
	super initialRequest: aRequest.
	classes do: [ :each |
		each name = aRequest url path last
			ifTrue: [ self selected: each ] ]