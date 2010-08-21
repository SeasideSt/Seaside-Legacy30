processing
updateRoot: anHtmlRoot
	anHtmlRoot stylesheet
		url: (self requestContext request isSsl
			ifTrue: [ 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/themes/' ]
			ifFalse: [ 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/themes/' ]) , self themeName , '/jquery-ui.css'