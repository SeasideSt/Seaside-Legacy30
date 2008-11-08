private-converting
convertResponse: aSeasideResponse
	| swazooResponse |
	aSeasideResponse isNil
		ifTrue:  [ ^self requestHandlingAborted ].
	swazooResponse := HTTPResponse new.
			
	aSeasideResponse headers do: [ :each |
		| field fieldClass |
		fieldClass := HeaderField classForFieldName: each key.
		field := fieldClass newForFieldName: each key withValueFrom: each value.
		swazooResponse headers addField: field ].
	self convertCookiesFrom: aSeasideResponse to: swazooResponse.
	
	swazooResponse code: aSeasideResponse status asNumber.
	swazooResponse entity: (self contentsOfResponse: aSeasideResponse).
	swazooResponse contentType: aSeasideResponse contentType seasideString.
	^swazooResponse