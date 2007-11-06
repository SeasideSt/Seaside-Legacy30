rendering
renderOn: html
	html span
		title: 'Render Time';
		with: self requestor renderTime.
	html text: '/'.
	html span
		title: 'Callback Time';
		with: self requestor processTime.
	html text: ' ms'