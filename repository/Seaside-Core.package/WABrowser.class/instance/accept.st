actions
accept
	| save |
	SeasidePlatformSupport ensureAuthorInitials: [self request: 'Please enter your initials:'].
	message := nil.
	save := contents.
	model contents: contents notifying: self.
	contents := save