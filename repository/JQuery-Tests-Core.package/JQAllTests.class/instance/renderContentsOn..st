rendering
renderContentsOn: html
	html div class: 'contents'; with: [
		html heading
			level: 1;
			with: contents title.
		html render: contents ]