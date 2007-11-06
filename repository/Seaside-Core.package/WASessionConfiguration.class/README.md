WASessionConfiguration defines attributes with default values about the Seaside session used by an application. 
It defines 
	sessionClass (WASession or subclass)	
	mainClass   (a subclass of WAMain)
	errorHandler	(a subclass of WAErrorHander)	
	renderContinuationClass (WARenderContinuation or subclass)
	redirectContinuationClass (WARedirectContinuation or subclass)
	useSessionCookie (
		true:
			put session id in cookie if client supports cookies
		false:
			put session id in all urls returned in the _s parameter
		default:
			false)

This configuration is added to all applications by default.