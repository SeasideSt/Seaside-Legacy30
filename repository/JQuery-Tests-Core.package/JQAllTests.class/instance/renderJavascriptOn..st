rendering-browser
renderJavascriptOn: html
	| context |
	html heading level: 4; with: 'Source'.
	html div class: 'code'; with: [
		context := html context copy.
		context clearMode.
		context document: (WAPrettyPrintedDocument context: html context).
		contents renderWithContext: context.
		context document close ].