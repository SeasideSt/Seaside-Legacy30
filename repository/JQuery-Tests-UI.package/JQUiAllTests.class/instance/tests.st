configuration
tests
	^ Array
		with: 'Interaction' -> (Array
			with: 'Draggable' -> JQDraggableFunctionalTest new
			with: 'Droppable' -> JQDroppableFunctionalTest new
			with: 'Resizable' -> JQResizableFunctionalTest new
			with: 'Selectable' -> JQSelectableFunctionalTest new
			with: 'Sortable' -> JQSortableFunctionalTest new)
		with: 'Widgets' -> (Array
			with: 'Accordion' -> JQAccordionFunctionalTest new
			with: 'Datepicker' -> JQDatepickerFunctionalTest new
			with: 'Dialog' -> JQDialogFunctionalTest new
			with: 'Slider' -> JQSliderFunctionalTest new
			with: 'Tabs' -> JQTabsFunctionalTest new)