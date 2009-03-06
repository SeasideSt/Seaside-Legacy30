processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.7/jquery-ui.min.js'