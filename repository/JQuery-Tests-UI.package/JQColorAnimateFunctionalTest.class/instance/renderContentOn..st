rendering
renderContentOn: html
	html div
		id: #animated;
		style: 'position: relative; width: 100px; height: 100px; background-color: #77f;border:1px solid black;text-align:center';
		with: [html break; break; text: 'Animate me'].
	html paragraph: 'Color Animations'.		
	html button
		onClick: ((html jQuery: #animated) animate backgroundColor: '#f77');
		with: 'Background to red'.
	html button
		onClick: ((html jQuery: #animated) animate color: '#fff');
		with: 'Text to white'.
	html button
		onClick: ((html jQuery: #animated) animate backgroundColor: '#77f'; color: 'black');
		with: 'Back to default'.