parent/child
unregister: aRequestHandler
	"Request handlers that act as containers should implement this method to
	remove aRequestHandler from their collections and send #unregistered to
	aRequestHandler. This method is called by #setParent:"