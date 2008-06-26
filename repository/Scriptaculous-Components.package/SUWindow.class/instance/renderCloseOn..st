rendering
renderCloseOn: html
	html anchor
		onClick: ((html evaluator) callback: [ :script | self scriptCloseOn: script];
													return: false);
		with: 'X'