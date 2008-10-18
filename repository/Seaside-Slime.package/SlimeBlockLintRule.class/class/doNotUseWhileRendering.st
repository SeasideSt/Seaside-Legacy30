bugs
doNotUseWhileRendering
	| matcher matches |
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: (Slime forbiddenRenderingSelectors collect: [ :each | 
			'``@receiver' , (ParseTreeLintRule genericPatternForSelector: each) ])			
		do: [ :node :answer |
			(Slime isWithinCallback: node)
				ifFalse: [ answer add: node ].
			answer ].
	^ self new
		name: 'Do not use while rendering';
		rationale: 'Certain functionaly should not be used while rendering. For example: #call: and #answer: should only be used from within callback code.';
		methodBlock: [ :context :result |
			context isRenderingMethod ifTrue: [
				matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
				matches do: [ :each |
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each selector ] ] ]