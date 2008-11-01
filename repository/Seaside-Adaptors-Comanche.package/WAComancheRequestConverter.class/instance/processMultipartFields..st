private
processMultipartFields: aKomRequest
	| merger |
	merger := WADictionaryMerger new.	

	aKomRequest multipartFormFieldsDo: [ :chunk |
		| key value |
		key := chunk fieldName.
		value := chunk fileName isEmptyOrNil
			ifTrue: [
				String streamContents: [ :stream |
					chunk saveToStream: stream ] ]
			ifFalse: [ self convertMultipartFileField: chunk ].
		merger at: key put: value ].
	
	"ugly"
	aKomRequest propertyAt: #postFields put: merger dictionary