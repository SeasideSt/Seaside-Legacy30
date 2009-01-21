*seaside-session
redirect
	^ self respondAndContinue: [ :url | self redirectTo: url ]