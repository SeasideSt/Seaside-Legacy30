private
printMilliSeconds: aNumber
	^aNumber > 2000
		ifTrue: [ self printDuration: (Duration milliSeconds: aNumber seasideInteger) ]
		ifFalse: [
			aNumber > 2
				ifTrue: [ aNumber seasideInteger printString, ' ms' ]
				ifFalse: [ (WANumberPrinter new precision: 2), ' ms' print: aNumber ] ]