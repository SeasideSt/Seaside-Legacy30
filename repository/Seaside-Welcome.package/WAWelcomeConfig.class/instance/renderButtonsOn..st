rendering-parts
renderButtonsOn: html
	html div
		class: 'buttons';
		with: [
			html anchor
				url: '/config';
				script: (html jQuery this button
					primaryIcon: 'ui-icon-gear');
				with: 'Open Editor'.
			html anchor
				callback: [ self answer ];
				script: (html jQuery this button
					primaryIcon: 'ui-icon-home');
				with: 'Close'.
			 ]