I provide an adapter between Seaside and the Comanche web server. To start a new server on port 8080, evaluate

	WAKom startOn: 8080.
	
and to stop it, evaluate

	WAKom stop.

By default I don't do any input conversion at all, you will get the input in whatever encoding the client sent and are expected to deliver it in the same. Howerver this behavior can be changed by evaluating
WAKom default encoding: anEncoding
See the class comment of the superclass for a discussion on this topic.

The state of the service (running or stopped) is automatically restored when quitting and reopening an image.

If you want to reset the password of the config application (reachable at /seaside/config) evaluate

	WADispatcherEditor initialize.