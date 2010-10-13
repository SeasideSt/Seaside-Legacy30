*seaside-pharo-email
seasideSmtpPort

	^ self seasideApplicationPreferenceAt: #smtpPort ifAbsent: [SMTPClient defaultPortNumber]