bugs
usesWrongRenderer
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: #(
			'`html updater callback: [ :`r | | `@temps | `@.statements ]'
			'`html evaluator callback: [ :`r | | `@temps | `@.statements ]'
			'`html periodical callback: [ :`r | | `@temps | `@.statements ]'
			'`html autocompleter callback: [ :`r | | `@temps | `@.statements ]'
			'`html inPlaceEditor callback: [ :`r | | `@temps | `@.statements ]'
			'`html inPlaceCollectionEditor callback: [ :`r | | `@temps | `@.statements ]' )
		do: [ :node :answer | 
			(answer isNil and: [ node arguments first references: node receiver receiver name ])
				ifTrue: [ node arguments first ]
				ifFalse: [ answer ] ].
	^ self new
		name: 'Uses the wrong renderer';
		rationale: 'Within AJAX callbacks you need to use the renderer that is passed into the block, the renderer from the outer context is only valid during the rendering of the outer context.';
		matcher: matcher;
		yourself