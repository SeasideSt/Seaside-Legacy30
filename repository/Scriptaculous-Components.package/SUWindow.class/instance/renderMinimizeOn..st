rendering
renderMinimizeOn: html
	html anchor
		onClick: ((html evaluator) callback: [ :script | self scriptCollapseOn: script];
													return: false);
		with: '-'