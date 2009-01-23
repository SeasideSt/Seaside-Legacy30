rendering-modes
renderRootWithContext: aRenderContext
	"This is a nasty hack.
	We don't want to go back through the RenderVisitor because	it will substitute
	the Halo of our root. Since that is us we get infinite recursion!
	So we bypass the visitor by creating the root's renderer ourselves."
	
	self root renderContentOn: (self root rendererClass context: aRenderContext)