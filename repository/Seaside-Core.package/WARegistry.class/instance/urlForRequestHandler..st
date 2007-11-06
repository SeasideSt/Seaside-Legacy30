public
urlForRequestHandler: anObject
	| key url |
	key := self ensureKeyForHandler: anObject.
	url := self baseUrl.
	url addParameter: self handlerField value: key displayString.
	^ url