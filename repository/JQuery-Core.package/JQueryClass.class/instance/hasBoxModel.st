deprecated
hasBoxModel
	"States if the current page, in the user's browser, is being rendered using the W3C CSS Box Model."
	
	self
		seasideDeprecatedApi: 'JQueryClass>>#browser'
		details: 'Use #support properties instead.'.
	self access: 'boxModel'