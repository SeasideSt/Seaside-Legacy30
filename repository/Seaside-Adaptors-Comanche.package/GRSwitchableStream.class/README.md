A GRSwitchableStream is a class that implements the same protocol as and in addition allows switching between text and binary mode.

Instance Variables
	codecStream:		<GRCodecStream>
	socketStream:		<SocketStream>

codecStream
	- we codec stream, that does encoding

socketStream
	- we socket stream, that does no encoding

stream
	- the current stream to be used
