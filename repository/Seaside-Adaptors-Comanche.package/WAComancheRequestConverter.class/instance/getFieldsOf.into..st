private
getFieldsOf: aKomRequest into: aDictionarMerger
	"puts all the GET parameters of the given request decoded into a dictionary merger"
	^self
		decodeFields: aKomRequest getFields
		using: [ :each | self decodeUrl: each ]
		into: aDictionarMerger