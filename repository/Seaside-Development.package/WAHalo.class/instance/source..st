rendering-modes
source: html
	| context |
	html div class: 'halo-source'; with: [
		context := html context copy.
		context clearMode.

		context document: (WAPrettyPrintedDocument context: html context).
		self renderRootWithContext: context.
		context document close ]