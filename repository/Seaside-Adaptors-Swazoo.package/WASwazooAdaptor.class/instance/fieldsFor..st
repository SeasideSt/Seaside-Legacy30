private
fieldsFor: aNativeRequest
	| merger |
	merger := WADictionaryMerger new.
	self getFieldsOf: aNativeRequest into: merger.
	(self isPost: aNativeRequest) 
		ifTrue: [ self postFieldsOf: aNativeRequest into: merger ].
	^ merger dictionary