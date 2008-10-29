rendering-browser
renderJavascriptOn: html
	| context pretty |
	html heading level: 2; with: 'Javascript'.
	html code: [
		pretty := self rendererClass context: html context.
		context := pretty context copy.
		context clearMode.
		context document: (WAPrettyPrintedDocument renderer: pretty).
		contents renderWithContext: context.
		pretty flush ]