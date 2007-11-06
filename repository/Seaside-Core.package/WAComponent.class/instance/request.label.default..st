convenience
request: requestString label: labelString default: initialString
	^ self call: (WAInputDialog new
		label: labelString;
		default: initialString;
		addMessage: requestString;
		yourself)