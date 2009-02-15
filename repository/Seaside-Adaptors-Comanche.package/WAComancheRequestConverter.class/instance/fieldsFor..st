private
fieldsFor: aNativeRequest
	"Answer all the GET and POST parameters of the given request decoded."
	
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aNativeRequest into: merger.
	self postFieldsOf: aNativeRequest into: merger.
	^ merger dictionary