rendering
renderTitleOn: html
	html anchor class: 'title'; 
		callback: [open := open not];
		onClick: ((html evaluator)
						callback: [ :script | self scriptToggleOn: script ];
						return: false);
		 with: title