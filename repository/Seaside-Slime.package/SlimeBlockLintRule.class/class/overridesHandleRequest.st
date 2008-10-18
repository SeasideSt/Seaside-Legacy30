possible bugs
overridesHandleRequest
	| matcher matches |
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '``@receiver pushRequestHandler: `@object1 while: `@object2'
		do: [ :node :answer |
			answer add: node.
			answer ].
	^ self new
		name: 'Overrides #handleRequest: instead of #responseForRequest:';
		rationale: 'Request handlers should override #responseForRequest: so that they are on the request context and can be decorated.';
		methodBlock: [ :context :result |
			(context selector = #handleRequest: and: [ context selectedClass inheritsFrom: WARequestHandler ]) ifTrue: [
				matches := matcher executeTree: context parseTree initialAnswer: OrderedCollection new.
				matches isEmpty ifTrue: [
					result addClass: context selectedClass selector: context selector.
					result addSearchString: #handleRequest: ] ] ]