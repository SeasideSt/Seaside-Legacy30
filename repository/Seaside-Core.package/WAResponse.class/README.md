I am a server independent http response object. I am used in conjunction with WASession >> returnResponse:

Instance Variables
	contentType:	<WAMimeType>
	headers:		<Dictionary<String, Object>>
	cookies:			<Set<WACookie>>
	status:			<Integer>
	stream:			<Stream>
				
contentType
	- the content type of the body
				
headers
	- the HTTP headers to be sent to the client
				
cookies
	- the cookies to be sent to the client. Either a Set of cookies or an empty array.
	
status
	- the HTTP status code, the default is 200 (OK)
	
stream
	- a read stream on the contents of the body to be sent to the client 