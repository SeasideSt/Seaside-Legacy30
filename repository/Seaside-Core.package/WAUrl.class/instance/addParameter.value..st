adding
addParameter: keyString value: valueString
	keyString isEmpty 
		ifFalse: [ self parameters at: keyString put: valueString ]