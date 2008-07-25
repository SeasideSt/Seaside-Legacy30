responding
respond: aBlock onAnswer: aContinuation
	| url response |
	url := self actionUrlForContinuation: aContinuation.
	response := aBlock value: url.
	self requestContext returnResponse: response