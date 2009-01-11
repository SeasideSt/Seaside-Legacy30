processing
handleFiltered: aRequestContext
	^ [ super handleFiltered: aRequestContext ]
		on: WADeprecatedApi
		do: [ :notification | self deprecated: notification ]