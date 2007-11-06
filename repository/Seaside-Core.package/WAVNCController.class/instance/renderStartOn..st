rendering
renderStartOn: html
	html form: [
		html text: 'Start VNC on display: '.
		html textInput
			value: 0;
			callback: [ :value | self startOn: value asNumber ].
		html submitButton
			text: 'Start' ]