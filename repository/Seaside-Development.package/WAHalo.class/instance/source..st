rendering-modes
source: html
	"Render the HTML source of the object we are wrapping using a pretty printed
	document. See #modes."
	
	| context |
	html div class: 'halo-source'; with: [
		context := html context copy.
		context disableHalos.

		context document: (WAPrettyPrintedDocument context: html context).
		"We have a new copy of the context with copies of the visitors but we know we
		want to start by rendering the root so we create a new RenderVisitor to kick off
		the process. If we just called #renderWithContext:, we would end up rendering all
		the decorations of a Component again."
		(WARenderVisitor context: context) start: self root.
		context document close ]