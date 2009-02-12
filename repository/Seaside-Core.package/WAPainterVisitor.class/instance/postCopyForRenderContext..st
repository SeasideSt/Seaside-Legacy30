copying
postCopyForRenderContext: aRenderContext
	"self is a shallow copy. Subclasses should copy fields as necessary to complete
	the full copy and ensure that all references to the old RenderContext are replace
	with aRenderContext."