accessing
stream: aStream
	stream := aStream.
	htmlEncoder := WAHtmlEncoder on: stream.
	urlEncoder := WAUrlEncoder on: stream