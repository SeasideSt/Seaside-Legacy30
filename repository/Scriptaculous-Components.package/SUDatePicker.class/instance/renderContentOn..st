rendering
renderContentOn: html
	uid := html nextId.
	html div
		id: uid;
		class: 'calendar';
		with: [self renderBodyOn: html]