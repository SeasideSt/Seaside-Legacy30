accessing
rendererClass
	^ rendererClass ifNil: [ rendererClass := WARenderCanvas ]