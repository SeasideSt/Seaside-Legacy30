rendering
updateRoot: aHtmlRoot
	self activeComponent == self
		ifFalse: [ ^ super updateRoot: aHtmlRoot ].
	self requestContext response
		redirectTo: (aHtmlRoot context actionUrl
			withParameter: (aHtmlRoot context callbacks
				registerActionCallback: [ [ self answer: self go ] repeat ]));
		respond