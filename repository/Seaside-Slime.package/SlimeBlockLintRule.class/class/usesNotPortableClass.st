seaside
usesNotPortableClass
	^ self new
		name: 'Uses not portable class';
		rationale: 'Some classes are not portable accross different Smalltalk dialects.';
		methodBlock: [ :context :result |
			context compiledMethod literalsDo: [ :each |
				(each isVariableBinding and: [ Slime notPortableClasses includes: each key ]) ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each key ] ] ]