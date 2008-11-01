private
postFieldsOf: aKomRequest into: aDictionaryMerger
	"puts all the POST parameters of the given request decoded into a dictionary merger"
	| isUrlEncoded |
	isUrlEncoded := aKomRequest contentType = 'application/x-www-form-urlencoded'.
	^self
		decodeFields: aKomRequest postFields
		using: [ :each |
			isUrlEncoded 
				ifTrue: [ self decodeUrl: each ]
				ifFalse: [ self decode: each ] ]
		into: aDictionaryMerger