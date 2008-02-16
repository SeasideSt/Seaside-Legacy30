rendering
renderPreviousButtonOn: html
	html div id: uid, '_prev'; style: 'text-align:center;position:relative'; with: [
	html anchor style: 'margin:0;text-decoration:none;color:black'; onClick: ((html evaluator)
								callback: [:script | self scriptMove: 1 for: uid on: script];return: false);
								with: '/\']