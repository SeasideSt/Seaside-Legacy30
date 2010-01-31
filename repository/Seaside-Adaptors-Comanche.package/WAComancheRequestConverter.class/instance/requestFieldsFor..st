converting-request
requestFieldsFor: aNativeRequest
	| merger |
	merger := WADictionaryMerger new.
	aNativeRequest isPostRequest
		ifTrue: [ self postFieldsOf: aNativeRequest into: merger ].
	^ merger dictionary