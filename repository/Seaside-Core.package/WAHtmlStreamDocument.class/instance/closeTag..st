writing-xhtml
closeTag: aString
	stream nextPutAll: '</'.
	stream nextPutAll: aString.
	stream nextPut: $>