converting-request
requestFieldsFor: aNativeRequest
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aNativeRequest into: merger.
	aNativeRequest isPost
		ifTrue: [ self postFieldsOf: aNativeRequest into: merger ].
	^ merger dictionary