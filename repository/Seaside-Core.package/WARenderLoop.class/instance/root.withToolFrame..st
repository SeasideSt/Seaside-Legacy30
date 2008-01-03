accessing
root: aComponent withToolFrame: aBoolean
	root := aComponent.
	self application decorationClasses
		do: [ :each | root addDecoration: each new ]