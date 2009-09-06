accessing
actionUrlFor: html
	| url |
	url := html actionUrl copy.
	url
		addParameter: self parameterName
		value: self firstParameterValue.
	^url