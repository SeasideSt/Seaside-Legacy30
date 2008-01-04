rendering
renderContentOn: html
	html heading
		id: 'count';
		with: self model count.
	html anchor
		onClick: (html request callback: [ self increase ]);
		with: '++'.
	html space.
	html anchor
		onClick: (html request callback: [ self decrease ]);
		with: '--'.
	html script: (html comet
		pusher: self pusher;
		connect)