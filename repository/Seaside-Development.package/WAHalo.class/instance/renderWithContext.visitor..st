rendering
renderWithContext: aRenderContext visitor: aPainterVisitor
	"Render the halo using aRenderContext. aPainterVisitor is the visitor that the halo
	visitor is wrapping; calling #visit: on it will perform the action that would have taken
	place had the halo wrapper not been present.
	"
	| html |
	html := WARenderCanvas context: aRenderContext.
	html div class: 'halo'; with: [
		html div class: 'halo-header'; with: [
			(self plugins select: [ :each | each isActive ])
				do: [ :each | html render: each ]
				separatedBy: [ html text: ' ' ] ].
		html div class: 'halo-body'; with: [
			self perform: self modeSelector with: html with: aPainterVisitor ] ].
	html flush