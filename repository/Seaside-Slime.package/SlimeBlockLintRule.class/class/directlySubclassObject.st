seaside-portability
directlySubclassObject
	^ self new
		resultClass: ClassEnvironment;
		name: 'Directly subclasses Object';
		rationale: 'Smalltalk dialects initialize objects differently, consider subclassing from WAObject to get a consistent initialization behavior.';
		classBlock: [ :context :result |
			context selectedClass superclass = Object
				ifTrue: [ result addClass: context selectedClass ] ]