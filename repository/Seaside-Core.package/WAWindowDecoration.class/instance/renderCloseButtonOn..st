rendering
renderCloseButtonOn: html
	html anchor
		title: 'Close';
		callback: [ self component answer: nil ];
		with: [ html html: '&times;' ]