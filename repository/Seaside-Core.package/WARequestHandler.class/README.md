WARequestHandler is an abstract class whose subclasses handle http requests. Most of the methods are either empty or return a default value. 

Subclasses must implement the following messages:
	handleRequest:	process the request

Instance Variables:
	parent	<WADispatcher | WAApplication | nil> What owns or manages the handler. WADispatchers manage WADispatchers & WAApplications, WAApplications own WASessions

