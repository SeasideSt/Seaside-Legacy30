public
urlFor: aRequestHandler ifAbsent: absentBlock
	"Return the URL for the given request handler. If the handler is not registered, return
	the result of absentBlock.
	This URL will include the handler's key; if you don't want this, use #baseUrl instead."

	| key |
	key := self keyFor: aRequestHandler ifAbsent: [ ^ absentBlock value ].
	^ self baseUrl
		addParameter: self keyField value: key;
		yourself