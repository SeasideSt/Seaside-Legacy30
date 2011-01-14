initialization
initializeWithRenderer: aRenderer
	html := aRenderer.
	indentCloseTags := OrderedCollection with: false.
	indentLevel := 0.
	firstLine := true