printing
statusString
	^ (service ifNil: [ super statusString ]) asString