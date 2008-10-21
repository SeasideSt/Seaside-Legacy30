configuration
tests
	^ Array
		with: 'Interaction' -> (Array
			with: 'Resizable' -> JQResizableFunctionalTest new
			with: 'Selectable' -> JQSelectableFunctionalTest new)
		with: 'Widgets' -> (Array new)