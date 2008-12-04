utilties
renderDialog: aString on: html
	html paragraph: [ html text: 'This is a '; text: aString; text: '.' ]