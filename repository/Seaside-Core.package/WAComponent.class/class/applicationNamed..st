registration
applicationNamed: aString
	| application |
	application := WAApplication named: aString.
	application configuration addAncestor: WARenderLoopConfiguration new.
	application preferenceAt: #rootComponent put: self.
	^ application