converting-request
requestFieldsFor: aNativeRequest
	| merger |
	merger := WADictionaryMerger new.
	aNativeRequest isPost
		ifTrue: [ self postFieldsOf: aNativeRequest into: merger ].
	^ merger dictionary