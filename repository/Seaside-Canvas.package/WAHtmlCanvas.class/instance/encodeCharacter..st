convenience
encodeCharacter: aCharacter 
	self html: '&#' , aCharacter seasideInteger seasideString , ';'