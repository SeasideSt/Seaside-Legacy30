rendering
renderContentOn: html
	html form: [ html div: [
		html select
			list: (self taskClasses asSortedCollection: [ :a :b | a name <= b name ]);
			on: #contents of: selection.
		html submitButton
			callback: [ self addTask ];
			with: 'Add'.
		html submitButton
			callback: [ self callTask ];
			with: 'Call' ]].
	self renderTasksOn: html