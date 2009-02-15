copying
postCopy
	super postCopy.
	visitor := visitor copyForRenderContext: self.
	properties := properties copy