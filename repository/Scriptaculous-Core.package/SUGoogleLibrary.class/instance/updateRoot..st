processing
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/prototype/1.6.0.3/prototype.js'.
	aHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/scriptaculous/1.8.1/scriptaculous.js'

