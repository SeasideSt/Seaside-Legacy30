actions
push: aRequestHandler while: aBlock
	"Push the request handler aRequestHandler on the handler stack while evaluating aBlock."
	
	handlers addFirst: aRequestHandler.
	^ aBlock ensure: [ handlers removeFirst ]