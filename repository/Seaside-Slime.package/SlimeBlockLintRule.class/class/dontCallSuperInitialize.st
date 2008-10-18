seaside-portability
dontCallSuperInitialize
	^ self new
		name: 'Don''t call super initialize';
		rationale: 'super initialize should not be called for direct subclasses of Object, as Object does not implement #initialize in other Smalltalk dialects.';
		methodBlock: [ :context :result |
			(context selectedClass superclass = Object 
				and: [ context selector = #initialize
				and: [ context superMessages includes: #initialize ] ])
				ifTrue: [ result addClass: context selectedClass selector: #initialize ] ]