responding
returnResponse: aResponse
	"aborts all further processing and directly returns aResponse
	aResponse instance of WAResponse"
	
	WAReturnResponse new response: aResponse; signal