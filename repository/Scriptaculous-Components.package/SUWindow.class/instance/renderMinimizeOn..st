rendering
renderMinimizeOn: html
	self minimizeButtonEnabled
		ifTrue: [html anchor
					title: 'Minimize';
					onClick: ((html evaluator) callback: [ :script | self scriptCollapseOn: script];
														return: false);
					with: '-']