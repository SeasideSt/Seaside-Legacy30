request handling
withEscapeContinuation: aBlock
	^ EscapeContinuation currentDo:
			[:cc |
			escapeContinuation := cc.
			aBlock value.
			self pageIntentionallyLeftBlank]