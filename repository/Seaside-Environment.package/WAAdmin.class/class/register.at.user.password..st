registration
register: aComponent at: aString user: user password: password
	"Like #registerApplicationAt: root: but additionally adds password protection."
	| application |
	application := self register: aComponent at: aString.
	application configuration addParent: WAAuthConfiguration instance.
	application 
		preferenceAt: #login
		put: user.
	application 
		preferenceAt: #passwordHash
		put: (SeasidePlatformSupport secureHashFor: password).
	application
		addFilter: WAAuthenticationFilter new.
	^ application