private
takeServerParametersFromRequest: aRequest
	| httpHost |
	hostname ifNil: [
		httpHost := aRequest
			headerAt: 'host'
			ifAbsent: [ ^ self ].
		hostname := httpHost copyUpTo: $:.
		(httpHost includes: $:)
			ifTrue: [ port := (httpHost copyAfter: $:) asInteger ] ]