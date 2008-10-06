accessing
actionUrlFor: html
	| url |
	url := html context actionUrl withoutParameters.
	url
		addParameter: self parameterName
		value: self firstParameterValue.
	^url