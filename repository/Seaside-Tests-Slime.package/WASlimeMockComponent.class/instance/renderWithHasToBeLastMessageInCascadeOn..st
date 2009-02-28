rendering
renderWithHasToBeLastMessageInCascadeOn: html
	html div
		with: 'foo';
		class: 'bar'.
	html div
		with: 'foo';
		class: 'bar';
		class: 'zork'