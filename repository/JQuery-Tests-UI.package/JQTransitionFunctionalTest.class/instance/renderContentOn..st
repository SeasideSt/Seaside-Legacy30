rendering
renderContentOn: html
	html div
		id: 'effect';
		class: 'blue';
		style: 'position: relative; width: 100px; height: 100px; text-align:center';
		with: [html break; break; big: 'Animate me'].
	
	html break; big: 'Class transition: '.
	html button
		onClick: ((html jQuery: #effect) switchClass: 'blue' to: 'highlight' duration: 2000);
		with: 'Switch'.
	html button
		onClick: ((html jQuery: #effect) toggleClass: 'highlight' duration: 'fast');
		with: 'Toggle'.
	html button
		onClick: ((html jQuery: #effect) addClass: 'blackBorder' duration: 'slow');
		with: 'Add'.
	html button
		onClick: ((html jQuery: #effect) removeClass: 'blackBorder' duration: 'slow');
		with: 'Remove'.
