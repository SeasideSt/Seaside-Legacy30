initialization
initialRequest: aRequest
	super initialRequest: aRequest.
	tests do: [ :category |
		category value do: [ :entry |
			aRequest url path last = entry value title asLowercase
				ifTrue: [ contents := entry value ] ] ]