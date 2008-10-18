*Seaside-Session
redirect
	^ self respondAndContinue: [ :url | self redirectResponseFor: url ]