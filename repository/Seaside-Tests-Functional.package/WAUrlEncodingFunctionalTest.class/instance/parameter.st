accessing
parameter
	| fieldValue request urlValue |
	request := self requestContext request.
	fieldValue := request at: 'input' ifAbsent: [ nil ].
	urlValue := request url parameters at: 'input' ifAbsent: [ nil ].
	^(urlValue isNil and: [ fieldValue = input ])
		ifTrue: [ fieldValue ]
		ifFalse: [ 'fail!' ]