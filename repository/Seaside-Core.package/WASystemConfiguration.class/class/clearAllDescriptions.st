as yet unclassified
clearAllDescriptions
	self allSubclasses do: [ :each | each instance clearDescription ]