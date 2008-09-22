private
defaultResponse
	^ super defaultResponse
		contentType: WAMimeType textJavascript;
		yourself