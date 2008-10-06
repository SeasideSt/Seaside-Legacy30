rendering
renderFiltersOn: html
	self session isFiltered ifFalse: [ ^ self ].
	html paragraph: 'Below a list of filters wrapping the current session:'.
	html orderedList list: self session filters