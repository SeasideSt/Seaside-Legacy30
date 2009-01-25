initialization
initializeAttributeSelectors
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher
		matchesAnyOf: #(
			'self addClass: `@value'
			'self addStyle: `@value'
			'self addMedia: `@value'
			'self attributeAt: `@key put: `@value'
			'self attributeAt: `@key ifAbsentPut: `@block'
			'self attributes at: `@key put: `@value'
			'self attributes at: `@key ifAbsentPut: `@block'
			'self attributes at: `@key append: `@value'
			'self attributes at: `@key append: `@value separator: `@separator' )
		do: [ :context :node | true ].
	attributeSelectors := Set new.
	WABrush withAllSubclasses , WAHtmlElement withAllSubclasses do: [ :class | 
		class methodDictionary keysAndValuesDo: [ :selector :method | 
			(matcher executeTree: method parseTree initialAnswer: false) 
				ifTrue: [ attributeSelectors add: selector ] ] ].
	#( callback: enabled: labels: value: )
		do: [ :each | attributeSelectors add: each ]