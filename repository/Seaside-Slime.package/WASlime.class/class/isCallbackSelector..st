testing
isCallbackSelector: aString 
	Symbol 
		hasInterned: aString
		ifTrue: [ :symbol | ^ callbackSelectors includes: symbol ].
	^ false