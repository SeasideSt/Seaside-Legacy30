rendering
updateRoot: aHtmlRoot
	self activeComponent == self
		ifFalse: [ ^ super updateRoot: aHtmlRoot ].
	self requestContext responseFactory
		redirectTo: (aHtmlRoot context actionUrl
			withParameter: (aHtmlRoot context callbacks
				registerActionCallback: [ [ self answer: self go ] repeat ]));
		respond