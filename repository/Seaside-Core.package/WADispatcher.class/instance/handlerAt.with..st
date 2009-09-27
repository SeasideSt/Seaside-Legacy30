accessing
handlerAt: aString with: aBlock
	^ (aString findTokens: '/') inject: self into: aBlock