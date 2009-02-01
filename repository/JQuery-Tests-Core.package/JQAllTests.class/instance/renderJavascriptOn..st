rendering-browser
renderJavascriptOn: html
	| context |
	html heading level: 4; with: 'Javascript'.
	html code: [
		context := html context copy.
		context clearMode.
		
		context document: (WAPrettyPrintedDocument context: html context).
		contents renderWithContext: context.
		context document close ].