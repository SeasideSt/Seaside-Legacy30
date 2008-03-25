private
sessionCookieFor: aRequest
	"returns the session cookie or nil"

	| candidates path |
	candidates := aRequest cookiesAt: self handlerCookieName.
	candidates isEmptyOrNil
		ifTrue: [ ^nil ].
	
	candidates size = 1 
		ifTrue: [ ^candidates first ].
		
	path := aRequest url findTokens: $/.
	candidates := candidates collect: [ :each |
		each -> (each path findTokens: $/) ].
	
	candidates := candidates reject: [ :each |
		each value size > path size ].
	
	candidates sort: [ :a :b |
		(self firstDifferenceBetween: a value and: path)
			> (self firstDifferenceBetween: b value and: path) ].
	
	^candidates first key
	