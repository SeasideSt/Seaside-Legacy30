accessing
initializeWithStream: aStream codec: aCodec
	super initializeWithStream: aStream codec: aCodec.
	htmlEncoder := WAHtmlEncoder on: aStream codec: aCodec.
	urlEncoder := WAUrlEncoder on: aStream codec: aCodec