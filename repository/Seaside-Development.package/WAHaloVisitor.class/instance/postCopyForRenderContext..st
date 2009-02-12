as yet unclassified
postCopyForRenderContext: aRenderContext
	super postCopyForRenderContext: aRenderContext.
	renderContext := aRenderContext.
	visitor := visitor copyForRenderContext: aRenderContext