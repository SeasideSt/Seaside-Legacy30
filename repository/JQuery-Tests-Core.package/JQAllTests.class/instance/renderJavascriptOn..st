rendering-browser
renderJavascriptOn: html
	| context prettyHtml |
	html heading level: 4; with: 'Javascript'.
	html code: [
		context := html context copy.
		context clearMode; visitor: nil.
		context visitor: (WARenderingGuide client: context visitor).
		
		"Create a new renderer in case the current one has open tags or something"
		prettyHtml := self rendererClass context: html context.
		context document: (WAPrettyPrintedDocument renderer: prettyHtml).
		contents renderWithContext: context.
		context document close.
		prettyHtml flush ].