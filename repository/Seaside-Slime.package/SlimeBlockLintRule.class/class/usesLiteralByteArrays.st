seaside-portability
usesLiteralByteArrays
	^ self new
		name: 'Uses literal byte arrays';
		rationale: 'Literal byte arrays are not portable accross different Smalltalk dialects.';
		methodBlock: [ :context :result |
			context compiledMethod literals do: [ :each |
				(each isLiteral and: [ each isKindOf: ByteArray ]) ifTrue: [ 
					result addClass: context selectedClass selector: context selector.
					result addSearchString: '#[' ] ] ]