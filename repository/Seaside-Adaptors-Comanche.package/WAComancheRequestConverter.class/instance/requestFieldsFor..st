converting-request
requestFieldsFor: aNativeRequest
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aNativeRequest into: merger.
	self postFieldsOf: aNativeRequest into: merger.
	^ merger dictionary