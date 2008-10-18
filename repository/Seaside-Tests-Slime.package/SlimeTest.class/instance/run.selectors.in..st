actions
run: aRule selectors: aSelectorCollection in: aClassCollection 
	| searchEnvironment resultEnvironment |
	searchEnvironment := ClassEnvironment 
		onEnvironment: BrowserEnvironment new
		classes: aClassCollection.
	SmalllintChecker
		runRule: aRule
		onEnvironment: searchEnvironment.
	resultEnvironment := aRule result.
	self assert: resultEnvironment problemCount = aSelectorCollection size.
	aSelectorCollection do: [ :selector |
		self assert: (resultEnvironment classes
			anySatisfy: [ :class | resultEnvironment includesSelector: selector in: class ]) ]