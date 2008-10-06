private
headerAt: aString forResponse: aResponse
	| header |
	header := aResponse headers
		detect: [ :each | each key = aString]
		ifNone: [ ^nil ].
	^header value