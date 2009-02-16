private
getFieldsOf: aKomRequest into: aDictionaryMerger
	"puts all the GET parameters of the given request decoded into a dictionary merger"
	^self
		decodeFields: aKomRequest getFields
		using: [ :each | self codec url decode: each ]
		into: aDictionaryMerger