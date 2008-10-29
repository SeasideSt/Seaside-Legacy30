rendering-browser
renderJavascriptOn: html
	| context pretty prettyHtml |
	html heading level: 4; with: 'Javascript'.
	html code: [
		pretty := self rendererClass context: html context.
		context := pretty context copy.
		context clearMode.
		context document: (WAPrettyPrintedDocument renderer: pretty).
		prettyHtml := self rendererClass context: context.
		self requestContext rememberLoadScripts: [
			contents renderContentOn: prettyHtml.
			self requestContext loadScripts isEmpty ifFalse: [
				(prettyHtml tag: 'script') with: [
					self requestContext loadScripts
						do: [ :each | prettyHtml render: each ]
						separatedBy: [ prettyHtml break ] ].
				prettyHtml flush ] ].
		pretty flush ]