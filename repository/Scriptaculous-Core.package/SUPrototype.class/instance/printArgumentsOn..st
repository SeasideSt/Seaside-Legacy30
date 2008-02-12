printing
printArgumentsOn: aStream
	| arguments |
	(arguments := self defaultArguments) isNil
		ifFalse: [ aStream arguments: arguments ]