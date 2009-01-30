rendering-browser
renderJavascriptOn: html
	| context |
	html heading level: 4; with: 'Javascript'.
	html code: [
		context := html context copy.
		context clearMode; visitor: nil.
		context visitor: (WARenderingGuide client: context visitor).
		
		context document: (WAPrettyPrintedDocument context: html context).
		contents renderWithContext: context.
		context document close ].