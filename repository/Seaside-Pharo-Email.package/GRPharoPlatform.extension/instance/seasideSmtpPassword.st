*seaside-pharo-email
seasideSmtpPassword

	^ self seasideApplicationPreferenceAt: #smtpPassword ifAbsent: [ nil ]