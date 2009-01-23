initialization
initializeWithRenderer: aRenderer
	self initializeWithStream: nil codec: nil.
	html := aRenderer.
	indentCloseTags := OrderedCollection with: false.
	indentLevel := 0.
	firstLine := true