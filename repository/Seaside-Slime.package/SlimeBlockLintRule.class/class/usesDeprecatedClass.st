seaside-deprecation
usesDeprecatedClass
	^ self new
		name: 'Uses deprecated class';
		rationale: 'Deprecated classes will be removed with the next release of Seaside.';
		classBlock: [ :context :result |
			(context selectedClass allSuperclasses
				anySatisfy: [ :each | Slime deprecatedClasses includes: each name ])
					ifTrue: [ result addClass: context selectedClass ] ];
		methodBlock: [ :context :result |
			context compiledMethod literals do: [ :each |
				(each isVariableBinding and: [ Slime deprecatedClasses includes: each key ]) ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each key ] ] ]