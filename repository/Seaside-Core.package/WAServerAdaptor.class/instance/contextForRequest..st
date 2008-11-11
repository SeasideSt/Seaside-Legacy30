private
contextForRequest: aRequest
	^ (WARequestContext request: aRequest)
					codec: self codec;
					yourself