miscellaneous
unnecessaryBlockPassedToBrush
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: #( 
			'`html `msg: [ ]' 
			'`html `msg: [ `html text: ``@arg ]' 
			'`html `msg: [ `html render: ``@arg ]' ) 
		do: [ :node :answer |
			(answer isNil and: [ Slime isBrushSelector: node selector ])
				ifTrue: [ node arguments first ] ].
	matcher
		matchesAnyOf: #(
			'`html `msg with: [ ]' 
			'`html `msg with: [ `html text: ``@arg ]' 
			'`html `msg with: [ `html render: ``@arg ]' )
		do: [ :node :answer |
			(answer isNil and: [ Slime isBrushSelector: node receiver selector ])
				ifTrue: [ node arguments first ] ].
	^ self new
		name: 'Unnecessary block passed to brush';
		rationale: 'Sending a block as argument to #with: is only needed when nesting brushes.';	
		matcher: matcher;
		yourself