processing
updateRoot: anHtmlRoot
	self
		greaseDeprecatedApi: 'JQBaseTheme>>#updateRoot:'
		details: 'Has to be fixed to use the styles of JQueryUI 1.8.0 as soon as they are available.'.
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet
		url: 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/' , self themeName , '/jquery-ui.css'