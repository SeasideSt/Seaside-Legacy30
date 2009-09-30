actions
send
	GRPlatform current 
		deliverMailFrom: self from greaseString
		to: self receipents
		text: self plainMessage