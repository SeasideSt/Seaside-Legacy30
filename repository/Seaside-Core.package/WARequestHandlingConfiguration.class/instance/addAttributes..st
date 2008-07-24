as yet unclassified
addAttributes: attributes
	(attributes list: #notFoundHandlerClass)
		options: [self notFoundHandlerClasses];
		default: WANotFoundHandler.
	(attributes list: #redirectHandler)
		options: [self redirectHandlerClasses];
		default: WARedirectHandler.