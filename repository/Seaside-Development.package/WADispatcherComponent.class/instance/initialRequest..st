initialization
initialRequest: aRequest
	"Check my relative URL, if the last entry is an application open the config editor, else open the dispatcher editor."
	
	| requestUrl baseUrl |
	super initialRequest: aRequest.
	requestUrl := aRequest url.
	baseUrl := WAUrl new
		addAllToPath: self application path;
		yourself.
	self openHandler: (self 
		lookupHandler: (baseUrl
			relativeTo: requestUrl))