rendering
updateRoot: aHtmlRoot
	self activeComponent == self
		ifFalse: [ ^ super updateRoot: aHtmlRoot ].
	self session redirectTo: (aHtmlRoot context actionUrl 
		withParameter: (aHtmlRoot context callbacks 
			registerActionCallback: [ [ self answer: self go ] repeat ]))