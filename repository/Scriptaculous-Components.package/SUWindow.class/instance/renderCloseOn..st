rendering
renderCloseOn: html
	html anchor
		title: 'Close';
		onClick: ((html evaluator) callback: [ :script | self scriptCloseOn: script];
													return: false);
		with: 'X'