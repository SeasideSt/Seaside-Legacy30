*seaside-session
redirect
	^ self respondAndContinue: [ :url | self redirectResponseFor: url ]