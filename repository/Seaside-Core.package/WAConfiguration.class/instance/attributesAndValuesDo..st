values
attributesAndValuesDo: keyValueBlock
	^ self allAttributes do:
		[:ea |
		keyValueBlock value: ea value: (self valueForAttribute: ea)]