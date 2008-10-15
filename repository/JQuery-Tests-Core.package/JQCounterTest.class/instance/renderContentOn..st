as yet unclassified
renderContentOn: html
	html anchor
		onClick: ((html jQuery @ #count) load
			html: [ :r | r render: (count := count - 1) ]);
		with: '--'.
	html anchor
		onClick: ((html jQuery @ #count) load
			html: [ :r | r render: (count := count + 1) ]);
		with: '++'.
	html div
		id: 'count';
		with: count