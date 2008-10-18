miscellaneous
basicNewInitializeMissing
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: 'self basicNew initialize'
		do: [ :node :answer | true ].
	^ self new
		name: '#basicNew initialize is missing';
		rationale: '#initialize is not called implicitely when sending #new to an object in other Smalltalk dialects.';
		classBlock: [ :context :result |
			(context selectedClass superclass = Object 
				and: [ (context selectedClass includesSelector: #initialize)
				and: [
					context selectedClass class methodDict noneSatisfy: [ :each | 
						matcher 
							executeTree: each parseTree 
							initialAnswer: false ] ] ])
				ifTrue: [ result addClass: context selectedClass selector: #initialize ] ]