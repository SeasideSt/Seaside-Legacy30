updating
updateRoot: anHtmlRoot
	self application updateRoot: anHtmlRoot.
	anHtmlRoot meta contentType: self contentType charset: self charSet.
	anHtmlRoot meta responseHeaderName: 'Content-Script-Type'; content: 'text/javascript'.
	anHtmlRoot htmlAttributes
		at: 'xmlns' put: 'http://www.w3.org/1999/xhtml';
		at: 'xml:lang' put: 'en';
		at: 'lang' put: 'en'.
	anHtmlRoot beXhtml10Strict.
	anHtmlRoot title: 'Seaside'