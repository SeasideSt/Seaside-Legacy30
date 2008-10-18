seaside
changesStateWhileRendering
	| matcher matches |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '`var'
		do: [ :node :answer |
			(node isWrite and: [ (Slime isWithinCallback: node) not ])
				ifTrue: [ answer add: node ].
			answer ].
	^ self new
		name: 'Changes state while rendering';
		rationale: 'Application state should not be changed in the rendering code, use a callback to define state.';
		resultClass: ParseTreeEnvironment;
		methodBlock: [ :context :result |
			| vars |
			context isRenderingMethod ifTrue: [
				matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
				matches isEmpty ifFalse: [
					vars := context instVarNames.
					matches do: [ :each |
						(vars includes: each name) ifTrue: [
							result addClass: context selectedClass selector: context selector.
							result matcher
								matches: each name , ' := ``@obj'
								do: [ :node :answer | 
									answer isNil 
										ifTrue: [ node ] 
										ifFalse: [ answer ] ] ] ] ] ] ]