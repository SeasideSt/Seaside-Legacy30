printing
printArgumentsOn: aStream
	self defaultArguments ifNotNilDo: [ :args | aStream arguments: args ]