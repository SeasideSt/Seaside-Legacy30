conveniance
redirectAfter: seconds to: aString
	self responseHeaderName: 'refresh'.
	self content: seconds toString , ';URL=' , aString