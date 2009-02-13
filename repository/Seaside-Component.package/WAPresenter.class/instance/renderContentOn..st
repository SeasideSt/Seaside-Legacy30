rendering
renderContentOn: html
	"By default, render all our children in order. Presenters should override this method
	to specify how they should render themselves. See also #rendererClass."
	
	self childrenDo: [ :each | html render: each ]