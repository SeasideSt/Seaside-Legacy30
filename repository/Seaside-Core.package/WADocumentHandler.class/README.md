WADocumentHandler handles requests for images, text documents and binary files (byte arrays). This class is not normally used directly. A number of WA*Tag classes implement document:mimeType:fileName: which use WADocumentHandler. Given a document document:mimeType:fileName: creates a WADocumentHandler on the document, registers the handler with a dispatcher, and adds the correct url in the tag for the document.

Instance Variables:
	document	<ByteArray | GIFImage | Image | String | WACachedDocument | any class that understands #asMIMEDocumentType:>	contents of the document
	fileName	<String>	file containing the document to be sent as an attachment, nil if no such file
	mimeDocument	<MIMEDocument>	MIMEDocument object representing this document and mimeType, generates stream used to write document for the response. 
	mimeType	<String>	standard HTTP mime type
