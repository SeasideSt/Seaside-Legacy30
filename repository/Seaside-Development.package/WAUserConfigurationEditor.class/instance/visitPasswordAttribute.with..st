rendering-visitors
visitPasswordAttribute: anAttribute with: html 
	html passwordInput 
		callback: [ :value | self configuration takeValueFromString: value forAttribute: anAttribute ]