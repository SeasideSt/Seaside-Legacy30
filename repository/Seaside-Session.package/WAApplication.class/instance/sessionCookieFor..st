private
sessionCookieFor: aRequest
	"answers the session cookie or nil
	There can be several cookies with the correct key (_s). We try to find the one who has the most specific path."

	| candidates requestUrl |
	candidates := aRequest cookiesAt: self handlerCookieName.
	
	candidates isEmptyOrNil
		ifTrue: [ ^nil ].
	candidates size = 1 
		ifTrue: [ ^candidates first ].
		
	requestUrl := aRequest url.
	candidates := candidates collect: [ :each |
		each -> (each path seasideUrl relativeTo: requestUrl) ].
	
	candidates := candidates reject: [ :each |
		| path |
		path := each value.
		path notEmpty and: [ path first = '..' ] ].

	candidates isEmpty
		ifTrue: [  ^nil ].
		
	candidates size > 1
		ifTrue: [
			candidates sort: [ :a :b |
				 a value size <= b value size ] ].
	
	^candidates first key