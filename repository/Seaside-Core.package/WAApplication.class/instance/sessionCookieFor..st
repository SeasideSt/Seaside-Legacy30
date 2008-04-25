private
sessionCookieFor: aRequest
	"returns the session cookie or nil"

	| candidates requestUrl |
	candidates := aRequest cookiesAt: self handlerCookieName.
	
	candidates isEmptyOrNil
		ifTrue: [ ^nil ].
	candidates size = 1 
		ifTrue: [ ^candidates first ].
		
	requestUrl := WAUrl new parsePath: aRequest url; yourself.
	candidates := candidates collect: [ :each |
		each -> ((WAUrl new parsePath: each path; yourself) relativeTo: requestUrl) ].
	
	candidates := candidates reject: [ :each |
		| path |
		path := each value.
		path notEmpty and: [ path first = '..' ] ].
	
	candidates isEmpty
		ifTrue: [  ^nil ].
	candidates size = 1 
		ifTrue: [ ^candidates first ].
	
	candidates sort: [ :a :b |
		a value size < b value size ].
	
	^candidates first key
	