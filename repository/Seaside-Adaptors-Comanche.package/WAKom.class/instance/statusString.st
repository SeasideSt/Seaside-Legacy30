printing
statusString
	^ (service ifNil: [ '-no service information-' ]) asString