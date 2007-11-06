accessing
root: aComponent
	root := aComponent.
	plugins := WAToolPlugin allSubclassesOn: self root for: self