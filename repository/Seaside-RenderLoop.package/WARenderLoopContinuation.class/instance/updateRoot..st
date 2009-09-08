updating
updateRoot: aHtmlRoot
	aHtmlRoot bodyAttributes at: 'onload' append: 'onLoad()' separator: ';'.
	aHtmlRoot meta contentType: self application contentType.
	aHtmlRoot meta contentScriptType: WAMimeType textJavascript.
	aHtmlRoot htmlAttributes
		at: 'xmlns' put: 'http://www.w3.org/1999/xhtml';
		at: 'xml:lang' put: 'en';
		at: 'lang' put: 'en'.
	aHtmlRoot beXhtml10Strict.
	self session updateRoot: aHtmlRoot.
	self application updateRoot: aHtmlRoot