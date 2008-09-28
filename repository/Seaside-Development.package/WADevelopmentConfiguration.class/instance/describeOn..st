description
describeOn: config
	config at: #rootDecorationClasses addAll: (Array with: WAToolDecoration).
	config at: #libraries addAll: (Array with: WADevelopmentFiles).
	config at: #exceptionHandler put: WAWalkbackErrorHandler