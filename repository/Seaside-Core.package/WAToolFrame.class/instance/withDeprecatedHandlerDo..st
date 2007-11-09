plugin-deprecation
withDeprecatedHandlerDo: aBlock
	^ aBlock
		on: WADeprecatedApi
		do: [ :notification |
			deprecated add: notification messageText.
			notification resume ]