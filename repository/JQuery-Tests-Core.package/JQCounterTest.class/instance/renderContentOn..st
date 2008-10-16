rendering
renderContentOn: html
	html anchor
		onClick: (html jQuery ajax
			script: [ :s | (s jQuery: #count) html: (count := count - 1) ]);
		with: '--'.
	html anchor
		onClick: (html jQuery ajax
			script: [ :s | (s jQuery: #count) html: (count := count + 1) ]);
		with: '++'.
	html div
		id: 'count';
		with: count