rendering
renderContentOn: html
	html div
		class: 'inner';
		with: [html break; break; big: 'Animate me'].
	html div 
		class: 'action';
		with: [
			html anchor
				onClick: ((html jQuery: '.inner') animate backgroundColor: '#f77');
				with: 'red'.
			html anchor
				onClick: ((html jQuery: '.inner') animate color: '#fff');
				with: 'white'.
			html anchor
				onClick: ((html jQuery: '.inner') animate backgroundColor: '#77f'; color: 'black');
				with: 'default'.]