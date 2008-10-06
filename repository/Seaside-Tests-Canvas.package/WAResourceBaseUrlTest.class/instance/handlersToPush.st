private
handlersToPush
	| application session |
	application := WAApplication new
		preferenceAt: #resourceBaseUrl
			put: self resourceBaseUrl;
		yourself.
	session := WASession new.
		
	^super handlersToPush, (Array with: application with: session)