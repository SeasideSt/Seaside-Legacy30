rendering
renderPreviousButtonOn: html
	html div
		id: uid, '_prev';
		style: self buttonStyle;
		class: self cssButton;
		onClick: (html evaluator
					callback: [:script |
						self scriptMove: 1 for: uid on: script];
						return: false);
		with: self prevText
		
