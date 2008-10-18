seaside
instantiatesComponentWhileRendering
	| matcher matches class |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '``@receiver `@message: ``@args'			
		do: [ :node :answer |
			(node receiver isVariable
				and: [ (class := Smalltalk classNamed: node receiver name) notNil
				and: [ (class isBehavior)
				and: [ (class includesBehavior: WAPresenter)
				and: [ (Slime isWithinCallback: node) not ] ] ] ]) 
					ifTrue: [ answer add: node ].
			answer ].
	^ self new
		name: 'Instantiates component while rendering';
		rationale: 'Components should only be instanciated in initialization-code, callbacks or through lazy initialization.';
		methodBlock: [ :context :result |
			context isRenderingMethod ifTrue: [
				matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
				matches do: [ :each |
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each receiver name ] ] ] 