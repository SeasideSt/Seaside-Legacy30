seaside-portability
invalidObjectInitialization
	^ self new
		name: 'Invalid object initialization';
		rationale: 'Initialize methods are required to call the designated initializer or its super implementation.';
		methodBlock: [ :context :result |
			(context selectedClass isMeta not
				and: [ ((context selector = #initialize) 
					or: [ (context selector beginsWith: #initialize) 
					and: [ context selector numArgs > 0 ] ])
				and: [ (context selectedClass ~= WAObject)
				and: [ (context selectedClass includesBehavior: WAObject)
				and: [ (context superMessages includes: context selector) not
				and: [ (context selfMessages noneSatisfy: [ :each | each beginsWith: #initialize ]) ] ] ] ] ])
					ifTrue: [ result addClass: context selectedClass selector: context selector ] ]