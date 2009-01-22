private
decodeAuthorization: aString
	^ WAPlatform current base64Decode: (aString findTokens: ' ') last