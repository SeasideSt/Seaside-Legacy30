rendering
renderContentOn: html
	html form: [
		html text: 'Your '.
		html anchor
			callback: [self show: self component ];
			with: 'component'.
		html text: ' has been registered at: '.
		html anchor
			url: '/', self componentName;
			with: '/', self componentName.
			
		html break; text: 'Try modifying the text displayed by your component.'.
		html break; break; text: 'Create another component '.
		html submitButton
			text: 'Ok';
			callback: [self answer: true]
		]