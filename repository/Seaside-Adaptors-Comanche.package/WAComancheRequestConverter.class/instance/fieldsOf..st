private
fieldsOf: aKomRequest
	"returns all the GET and POST parameters of the given request decoded"
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aKomRequest into: merger.
	self postFieldsOf: aKomRequest into: merger.
	^merger dictionary