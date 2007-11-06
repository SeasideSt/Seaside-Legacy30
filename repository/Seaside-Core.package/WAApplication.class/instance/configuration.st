preferences
configuration
	^ configuration ifNil: [configuration := WAUserConfiguration new addAncestor: self defaultAncestor]