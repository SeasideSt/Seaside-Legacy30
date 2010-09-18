processing
updateRoot: anHtmlRoot
	anHtmlRoot stylesheet
		url: (self requestContext request isSsl
			ifTrue: [ 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/themes/' ]
			ifFalse: [ 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/themes/' ]) , 
				self themeName , 
				'/jquery-ui.css'