rendering
renderButtonOn: html
	html button
		onClick: (html javascript
			alert: 'Nothing to configure right now.');
		script: (html jQuery this button 
			text: false;
			primaryIcon: 'ui-icon-gear');
		with: 'Configure'