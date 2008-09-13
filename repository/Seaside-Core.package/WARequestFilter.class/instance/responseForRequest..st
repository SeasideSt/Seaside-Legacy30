processing
responseForRequest: aRequest
	"Pass on the request to the next filter or handler. Subclasses might override this method to customize the request or response handling."

	^ self next responseForRequest: aRequest