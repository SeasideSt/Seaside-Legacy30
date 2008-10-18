miscellaneous
extractCallbackCodeToMethod
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (Slime callbackSelectors collect: [ :each |
			'`html `msg' , (self genericPatternForSelector: each) ])
		do: [ :node :answer |
			(answer isNil and: [ Slime isBrushSelector: node receiver selector ]) ifTrue: [
				node arguments 
					detect: [ :each | each isBlock and: [ each body statements size > 1 ] ]
					ifNone: [ nil ] ] ].
	^ self new
		name: 'Extract callback code to separate method';
		rationale: 'For clarity rendering code and callback code should not be mixed, extract the contents of the callback block to a separate method.';
		matcher: matcher;
		yourself