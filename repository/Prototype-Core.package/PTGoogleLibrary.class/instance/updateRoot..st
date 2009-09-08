processing
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/prototype/1.6.0.3/prototype.js'