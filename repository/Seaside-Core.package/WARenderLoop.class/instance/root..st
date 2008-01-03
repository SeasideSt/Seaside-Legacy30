accessing
root: aComponent
	root := aComponent.
	self application decorationClasses
		do: [ :each | root addDecoration: each new ]