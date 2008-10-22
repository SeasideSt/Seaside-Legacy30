convenience
activeComponent
	WAPluggableVisiblePresentersVisitor new
			start: self do: [ :each | each isDecoration ifFalse: [ ^ each ] ]