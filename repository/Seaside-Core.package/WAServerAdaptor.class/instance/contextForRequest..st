private
contextForRequest: aRequest
	^ WARequestContext 
		request: aRequest
		response: (self responseForRequest: aRequest)
		codec: self codec