convenience
redirectAfter: seconds to: aString 
	self responseHeaderName: 'refresh'.
	self content: seconds seasideString , ';URL=' , aString