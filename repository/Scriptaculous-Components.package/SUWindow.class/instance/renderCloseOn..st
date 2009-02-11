rendering
renderCloseOn: html
	self closeButtonEnabled
		ifTrue: [html anchor
					title: 'Close';
					onClick: (html scriptaculous evaluator
								callback: [ :script |
									self closeOn: script];
									return: false);
					with: 'X']