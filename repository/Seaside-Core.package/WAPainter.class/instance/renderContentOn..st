rendering
renderContentOn: html
	"This is the main rendering method of WAPainter. It will be called with an instance of
	the Renderer class returned by #rendererClass whenever this Painter is asked to render
	itself."
	
	self subclassResponsibility