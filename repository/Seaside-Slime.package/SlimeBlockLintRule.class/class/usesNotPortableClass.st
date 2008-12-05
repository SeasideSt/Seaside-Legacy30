seaside-portability
usesNotPortableClass
	^ self new
		name: 'Uses not portable class';
		rationale: 'Some classes are not portable accross different Smalltalk dialects.';
		classBlock: [ :context :result |
			(Slime notPortableClasses includes: context selectedClass superclass) ifTrue: [
				result addClass: context selectedClass.
				result addSearchString: context selectedClass superclass name ] ];
		methodBlock: [ :context :result |
			context compiledMethod literals do: [ :each |
				(each isVariableBinding and: [ Slime notPortableClasses includes: each key ]) ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each key ] ] ]