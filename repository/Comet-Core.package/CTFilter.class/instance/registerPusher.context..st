public
registerPusher: aPusher context: aContext
	| handler |
	handler := CTHandler on: aPusher session: self handler context: aContext.
	handlers at: handler id put: handler.
	^ handler id