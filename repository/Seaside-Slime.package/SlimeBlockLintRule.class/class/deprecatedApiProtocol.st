seaside
deprecatedApiProtocol
	| matcher matches |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: #(
			'``@receiver seasideDeprecatedApi: ``@arg1'
			'``@receiver seasideDeprecatedApi: ``@arg1 details: ``@arg2' )
		do: [ :node :answer | answer add: node; yourself ].
	^ self new
		name: 'Invalid use of deprecated API protocol.';
		rationale: 'Make sure to follow the following pattern: self seasideDeprecatedApi: ''Class>>#selector'' details: ''Some description.''';
		methodBlock: [ :context :result |
			matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
			matches do: [ :node |
				(node arguments first isLiteral and: [ node arguments first value isString and: [ context selectedClass name asString , '>>#' , context selector asString ~= node arguments first value ] ]) ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: node arguments first value ].
				(node arguments size > 1 and: [ node arguments second isLiteral and: [ node arguments second value isString and: [ (node arguments second value endsWith: '.') not ] ] ]) ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: node arguments second value ] ] ];
		yourself