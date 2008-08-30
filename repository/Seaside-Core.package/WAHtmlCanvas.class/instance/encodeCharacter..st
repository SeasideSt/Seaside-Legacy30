convenience
encodeCharacter: aCharacter
	self html: '&#' , aCharacter asInteger toString , ';'