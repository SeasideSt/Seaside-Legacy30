WAEntryPoint represents a named entry point to a request handler.

Given a seaside application URL, http://localhost:8008/seaside/tests/alltests, the path parts of the url are mapped to WARequestHandlers. "seaside" & "tests" map to WADispatchers, "alltests" maps to a WAApplication. These individual path parts are used as the names of the WARequestHandlers. WAEntryPoint is an abstract class that handles the name of WARequestHandlers. WAEntryPoint constructs the proper url path for this handler.

Instance Variables:
	name	<String>	the name or path part of this handler

