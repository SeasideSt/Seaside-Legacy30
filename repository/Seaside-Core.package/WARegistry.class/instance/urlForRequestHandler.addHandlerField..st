public
urlForRequestHandler: anObject addHandlerField: aBoolean
	| key url |
	key := self ensureKeyForHandler: anObject.
	url := self baseUrl.
	aBoolean ifTrue: [
		url addParameter: self handlerField value: key toString ].
	^ url