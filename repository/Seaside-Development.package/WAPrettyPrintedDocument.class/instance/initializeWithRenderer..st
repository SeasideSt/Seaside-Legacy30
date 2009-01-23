initialization
initializeWithRenderer: aRenderer
	self initialize.
	html := aRenderer.
	indentCloseTags := OrderedCollection with: false.
	indentLevel := 0.
	firstLine := true