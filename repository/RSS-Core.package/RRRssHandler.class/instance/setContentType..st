private
setContentType: aResponse
	| contentType |
	contentType := WAMimeType applicationRssXml
		charset: self charSet;
		yourself.
	aResponse contentType: contentType.