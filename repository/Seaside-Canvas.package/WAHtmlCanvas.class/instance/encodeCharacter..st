convenience
encodeCharacter: aCharacter 
	self html: '&#', aCharacter asInteger seasideString, ';'