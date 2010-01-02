processing
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot javascript
		url: 'http://ajax.googleapis.com/ajax/libs/scriptaculous/1.8.3/scriptaculous.js'

