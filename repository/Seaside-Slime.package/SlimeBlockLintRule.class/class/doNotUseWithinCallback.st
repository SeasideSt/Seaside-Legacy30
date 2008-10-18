seaside
doNotUseWithinCallback
	| matcher matches |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (Slime forbiddenCallbackSelectors collect: [ :each | 
			'``@receiver' , (ParseTreeLintRule genericPatternForSelector: each) ])			
		do: [ :node :answer |
			(Slime isWithinCallback: node)
				ifTrue: [ answer add: node ].
			answer ].
	^ self new
		name: 'Do not use within callback';
		rationale: 'Certain functionaly should not be used within callbacks. For example: #addLoadScript: should only be used while rendering.';
		methodBlock: [ :context :result |
			context isRenderingMethod ifTrue: [
				matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
				matches do: [ :each |
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each selector ] ] ]