email
deliverMailFrom: fromAddress to: recipientList text: messageText
	SMTPClient
		deliverMailFrom: fromAddress
		to: recipientList
		text: messageText
		usingServer: self smtpServer