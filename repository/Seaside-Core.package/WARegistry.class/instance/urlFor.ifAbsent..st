public
urlFor: aRequestHandler ifAbsent: aBlock
	| key |
	key := self keyFor: aRequestHandler ifAbsent: [ ^ aBlock value ].
	^ self baseUrl
		addParameter: self handlerField value: key;
		yourself