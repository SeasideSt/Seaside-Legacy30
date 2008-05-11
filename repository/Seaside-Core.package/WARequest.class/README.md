I am a server independent http request object. Instance of me can be aquired through WASession >> #currentRequest.

Instance Variables
	url:				<String>
	fields:			<Dictionary<String, Object>>
	headers:		<Dictionary<String, String>>
	nativeRequest:	<Object>
	cookies:			<Collection<WARequestCookie>>
	method:			<String>

url
	- The request path without the query string. For example if the client requested 'http://www.google.com/search?q=seaside' then the contents of url would be '/search'.

headers
	- The header of the HTTP request. This is a Dictionary mapping lowercase strings to other strings.
	
fields
	- The HTTP request parameters. These are the GET and POST parameters in combined into a single dictionary. In general this is a dictionary mapping Strings to Strings. In the case of multivalued paramters or parameters specified in both GET and POST it maps Strings to a Collection of Strings.
	
cookies
	- The collection of cookies (instance of WARequestCookie) the client sent. Note not all clients support all fields. E.g. you might send a path but the client might not return it. Note there can be several cookies with the same key but a different domain or path. See the #cookiesAt: method.
	
nativeRequest
	- The underlying request object of the web server (Kom, Swazoo, OpenTalk, FastCGI, ...). Accessing this makes your code unportable.
	
method
	- the HTTP method, should be upper case. In general only 'GET' and 'POST' are encountered in Seaside. SqueakSource also supports 'PUT'.