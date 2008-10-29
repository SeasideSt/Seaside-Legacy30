rendering
renderContentOn: html
	html anchor
		onClick: (html jQuery ajax
			script: [ :script | script << (script jQuery: #count) html: (count := count - 1) ]);
		with: '--'.
	html anchor
		onClick: (html jQuery ajax
			script: [ :script | script << (script jQuery: #count) html: (count := count + 1) ]);
		with: '++'.
	html div
		id: 'count';
		with: count