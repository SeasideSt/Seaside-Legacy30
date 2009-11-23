*seaside-pharo-email
seasideDeliverEmailMessage: aWAEmailMessage

	SMTPClient
		deliverMailFrom: aWAEmailMessage from greaseString
		to: aWAEmailMessage recipients
		text: aWAEmailMessage plainMessage
		usingServer: self smtpServer
