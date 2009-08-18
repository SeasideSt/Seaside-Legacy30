actions
run: aRule selectors: aSelectorCollection in: aClassCollection
	"aRule open"

	| searchEnvironment resultEnvironment |
	aRule class isVisible
		ifFalse: [ ^ self ].
	searchEnvironment := ClassEnvironment 
		onEnvironment: BrowserEnvironment new
		classes: aClassCollection.
	SmalllintChecker
		runRule: aRule
		onEnvironment: searchEnvironment.
	resultEnvironment := aRule result.
	self assert: resultEnvironment name = aRule name.
	self assert: resultEnvironment problemCount = aSelectorCollection size.
	aSelectorCollection do: [ :selector |
		self assert: (resultEnvironment classes
			anySatisfy: [ :class | resultEnvironment includesSelector: selector in: class ]) ]