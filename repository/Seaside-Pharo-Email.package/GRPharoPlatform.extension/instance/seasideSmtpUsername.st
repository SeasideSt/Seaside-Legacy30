*seaside-pharo-email
seasideSmtpUsername

	^ self seasideApplicationPreferenceAt: #smtpUsername ifAbsent: [ nil ]