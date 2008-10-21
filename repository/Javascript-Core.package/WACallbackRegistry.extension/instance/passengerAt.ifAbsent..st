*javascript-core
passengerAt: aString ifAbsent: aBlock
	| passenger |
	passenger := self at: aString ifAbsent: [ ^ aBlock value ].
	passenger isPassenger ifFalse: [ ^ aBlock value ].
	^ passenger object