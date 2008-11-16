rendering
renderContentOn: html
	html anchor
		onClick: ((html jQuery: #count) load
			html: [ :h | h render: (count := count - 1) ]);
		with: '--'.
	html text: ' '.
	html anchor
		onClick: ((html jQuery: #count) load
			html: [ :h | h render: (count := count + 1) ]);
		with: '++'.
	html div
		id: #count;
		with: count