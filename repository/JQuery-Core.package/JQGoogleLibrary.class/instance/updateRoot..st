processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js'