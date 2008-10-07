rendering-modes
source: html
	| context haloHtml |
	haloHtml := self rendererClass context: html context.
	context := haloHtml context copy.
	context clearMode.
	context document: (WAPrettyPrintedDocument renderer: haloHtml).
	haloHtml div
		class: 'halo-source';
		with: [ self root renderWithContext: context ].
	haloHtml flush