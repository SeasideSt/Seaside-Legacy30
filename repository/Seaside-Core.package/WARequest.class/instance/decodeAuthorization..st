private
decodeAuthorization: aString
	^ SeasidePlatformSupport base64Decode: (aString findTokens: ' ') last