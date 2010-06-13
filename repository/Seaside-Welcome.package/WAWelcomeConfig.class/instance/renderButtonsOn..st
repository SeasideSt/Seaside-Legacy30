rendering-parts
renderButtonsOn: html
	html div class: 'buttons'; with: [
		html anchor
			callback: [ self answer ];
			script: (html jQuery this button
				primaryIcon: 'ui-icon-home');
			with: 'Close Basic'.
		html anchor
			url: '/config';
			script: (html jQuery this button
				primaryIcon: 'ui-icon-gear');
			with: 'Open Full' ]