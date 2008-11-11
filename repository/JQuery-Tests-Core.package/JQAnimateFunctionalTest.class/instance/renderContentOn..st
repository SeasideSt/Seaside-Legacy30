rendering
renderContentOn: html
	html div
		id: #animated;
		style: 'position: relative; width: 100px; height: 100px; background-color: #77f'.
		
	html paragraph: 'Relative Values'.
	html button
		onClick: ((html jQuery: #animated) animate left: '-=100px');
		with: '<<'.
	html button
		onClick: ((html jQuery: #animated) animate left: '+=100px');
		with: '>>'.

	html paragraph: 'Toggle Values'.
	html button
		onClick: ((html jQuery: #animated) animate height: 'toggle');
		with: 'height'.
	html button
		onClick: ((html jQuery: #animated) animate width: 'toggle');
		with: 'width'.

	html paragraph: 'Absolute Values'.
	html button
		onClick: ((html jQuery: #animated) animate opacity: 0.0);
		with: '0%'.
	html button
		onClick: ((html jQuery: #animated) animate opacity: 0.5);
		with: '50%'.
	html button
		onClick: ((html jQuery: #animated) animate opacity: 1.0);
		with: '100%'.
		
	html paragraph: 'Multiple Values'.		
	html button
		onClick: ((html jQuery: #animated) animate width: 60; height: 60; border: '20px solid #00f');
		with: 'show'.
	html button
		onClick: ((html jQuery: #animated) animate width: 100; height: 100; border: '0px solid #00f');
		with: 'hide'.
