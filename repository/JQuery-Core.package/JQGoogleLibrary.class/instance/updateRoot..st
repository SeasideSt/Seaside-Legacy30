processing
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot javascript
		url: 'https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js'