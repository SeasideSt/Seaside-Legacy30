initialization
initializeOn: aComponent
	root := aComponent.
	mode := WAValueHolder with: self modes first.
	plugins := WAHaloPlugin allSubclassesOn: self root for: self