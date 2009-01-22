actions
send
	WAPlatform current
		deliverMailFrom: self from seasideString
		to: self receipents
		text: self plainMessage