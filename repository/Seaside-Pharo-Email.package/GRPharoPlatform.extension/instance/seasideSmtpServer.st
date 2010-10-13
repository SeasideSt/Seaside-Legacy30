*seaside-pharo-email
seasideSmtpServer

	^ self seasideApplicationPreferenceAt: #smtpServer ifAbsent: [ MailSender smtpServer ]