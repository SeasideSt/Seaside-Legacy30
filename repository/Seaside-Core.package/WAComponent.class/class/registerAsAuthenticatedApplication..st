registration
registerAsAuthenticatedApplication: aString
	"Like #registerAsApplication: but addtionally adds password protection. You will be prompted for a susername and password."
	| application user password |
	application := self registerAsApplication: aString.
	application configuration addAncestor: WAAuthConfiguration new.
	user := SeasidePlatformSupport
		request: 'Please choose a username for\the application ' withCRs , aString printString.
	password := SeasidePlatformSupport
		request: 'Please enter a password for ' , aString printString.
	application preferenceAt: #login put: user.
	application preferenceAt: #passwordHash put: (SeasidePlatformSupport secureHashFor: password).
	^ application