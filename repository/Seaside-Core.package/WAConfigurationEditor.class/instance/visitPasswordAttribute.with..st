rendering-visitors
visitPasswordAttribute: anAttribute with: html
	html passwordInput
		callback: [ :value | configuration takeValue: (anAttribute valueFromString: value) forAttribute: anAttribute ]