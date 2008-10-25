processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.5.2/jquery-ui.min.js'