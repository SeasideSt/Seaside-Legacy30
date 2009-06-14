processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot stylesheet
		url: 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/' , self themeName , '/jquery-ui.css'