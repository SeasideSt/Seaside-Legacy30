initialization
initializeWithStream: aStream codec: aCodec
	super initializeWithStream: aStream codec: aCodec.
	htmlEncoder := WAHtmlEncoder on: aStream.
	urlEncoder := WAUrlEncoder on: aStream codec: aCodec