WARegistry maintains a set of handlers indexed by a key, (by default _s). WARegistry checks incoming request URLs for a key and looks for a matching active request handler. If one exists, the request is sent to the proper handler. If not the request is either a new request (in which case #handleDefaultRequest: is called) or a request to a now-inactive handler (in which case #handleExpiredRequest: is called). These two methods allow subclasses to properly handle these requests.

Subclasses must implement the following messages:
	handleDefaultRequest:
		Handle a request without a session key, ie a new request.

Instance Variables:
	handlersByKey	<Dictionary of <session key(string),WASession>>	provides easy access to the session for a session key
	keysByHandler	<Dictionary of <WASession, session key(string)>>	provides easy access to the session key of a session
	mutex	<Semaphore>	Used to insure keysByHandler & handlersByKey are updated atomically
