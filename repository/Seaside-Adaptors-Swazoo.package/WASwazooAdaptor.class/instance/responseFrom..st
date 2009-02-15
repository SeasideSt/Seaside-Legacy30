converting
responseFrom: aRequestContext
	| swazooResponse |
	swazooResponse := HTTPResponse new.
	aRequestContext response headers keysAndValuesDo: [ :key :value |
		key = 'Content-Type'
			ifTrue: [ swazooResponse contentType: value seasideString ]
			ifFalse: [
				| field fieldClass |
				fieldClass := HeaderField classForFieldName: key.
				field := fieldClass newForFieldName: key withValueFrom: value seasideString.
				swazooResponse headers addField: field ] ].
	self convertCookiesFrom: aRequestContext response to: swazooResponse.
	swazooResponse code: aRequestContext response status asNumber.
	swazooResponse entity: aRequestContext response contents.
	^ swazooResponse