WAGlobalConfiguration defines attributes (properties) about the Seaside server. It defines
 	server protocol (http, https) 
	host name
	port number 
	server path (first part of URL path, default "seaside" in Squeak "seaside/go" in WV, maps to 
		top level WADispatcher, if you change value make sure WADispatcher is configured correctly)
	deployment mode (false = development mode)

Note setting these attributes does not change the values the server using. Changing the first four changes how Seaside generates the URLs in pages returned to the client. 

By default all applications contain this configuration.