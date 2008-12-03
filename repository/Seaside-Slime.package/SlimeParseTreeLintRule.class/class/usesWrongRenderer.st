seaside
usesWrongRenderer
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: #(
			" JQuery: "
			'``@obj ajax html: [ :`r | | `@temps | `@.statements ]'
			'``@obj load html: [ :`r | | `@temps | `@.statements ]'
			'``@obj ajax script: [ :`r | | `@temps | `@.statements ]'
			'``@obj load script: [ :`r | | `@temps | `@.statements ]'
			'``@obj ajax text: [ :`r | | `@temps | `@.statements ]'
			'``@obj load text: [ :`r | | `@temps | `@.statements ]'
			" Scriptaculous: "
			'``@obj updater callback: [ :`r | | `@temps | `@.statements ]'
			'``@obj evaluator callback: [ :`r | | `@temps | `@.statements ]'
			'``@obj periodical callback: [ :`r | | `@temps | `@.statements ]'
			'``@obj autocompleter callback: [ :`r | | `@temps | `@.statements ]'
			'``@obj inPlaceEditor callback: [ :`r | | `@temps | `@.statements ]'
			'``@obj inPlaceCollectionEditor callback: [ :`r | | `@temps | `@.statements ]' )
		do: [ :node :answer | 
			(answer isNil and: [ node arguments first references: node receiver receiver name ])
				ifTrue: [ node arguments first ]
				ifFalse: [ answer ] ].
	^ self new
		name: 'Uses the wrong renderer';
		rationale: 'Within AJAX callbacks you need to use the renderer that is passed into the block, the renderer from the outer context is only valid during the rendering of the outer context.';
		matcher: matcher;
		yourself