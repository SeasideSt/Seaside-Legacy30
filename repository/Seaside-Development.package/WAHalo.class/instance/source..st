rendering-modes
source: html
	| context haloHtml |
	html div class: 'halo-source'; with: [
		context := html context copy.
		context clearMode; visitor: nil.
		context visitor: (WARenderingGuide client: context visitor).

		haloHtml := self rendererClass context: html context.
		context document: (WAPrettyPrintedDocument renderer: haloHtml).
		self renderRootWithContext: context.
		context document close.
		haloHtml flush ]