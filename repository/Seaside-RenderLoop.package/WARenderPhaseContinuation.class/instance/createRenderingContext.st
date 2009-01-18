private
createRenderingContext
	| renderingContext |
	renderingContext := WARenderingContext new.
	
	"Wrap the default visitor with a rendering guide"
	renderingContext visitor: (WARenderingGuide client: renderingContext visitor).
	
	^ renderingContext
		