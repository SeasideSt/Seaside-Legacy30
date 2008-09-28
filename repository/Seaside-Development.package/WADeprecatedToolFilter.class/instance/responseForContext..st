processing
responseForContext: aRequestContext
	^ [ super responseForContext: aRequestContext ]
		on: WADeprecatedApi
		do: [ :notification | self deprecated: notification ]