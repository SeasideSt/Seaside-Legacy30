private
postFieldsOf: aNativeRequest into: aDictionaryMerger
	"puts all the POST parameters of the given request decoded into a dictionary merger"
	| isUrlEncoded |
	isUrlEncoded := self isUrlEncoded: aNativeRequest.
	^self
		decodeFields: aNativeRequest postFields
		using: [ :each |
			isUrlEncoded 
				ifTrue: [ self decodeUrl: each ]
				ifFalse: [ self decode: each ] ]
		into: aDictionaryMerger