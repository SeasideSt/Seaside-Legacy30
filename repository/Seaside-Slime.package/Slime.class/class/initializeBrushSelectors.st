initialization
initializeBrushSelectors
	| matcher |
	matcher := ParseTreeSearcher new.
	matcher
		matchesAnyMethodOf: #(
			'`selector ^ self tag: `#tag'
			'`selector ^ self brush: `@obj'
			'`selector: `aBlock self `selector with: `aBlock'
			'`selector ^ `class on: self' )
		do: [ :context :node | true ].
	brushSelectors := Set new.
	WACanvas allSubclassesDo: [ :class | 
		class methodDictionary keysAndValuesDo: [ :selector :method | 
			(matcher executeTree: method parseTree initialAnswer: false) 
				ifTrue: [ brushSelectors add: selector ] ] ]