actions
computeDuration
	| dateDiff |
	dateDiff := (endDAT dateAndTime asDate - beginDAT dateAndTime asDate) days.
	dateDiff isZero 
		ifFalse: [ self inform: dateDiff seasideString, ' day(s)' ]
		ifTrue: [ self inform: (endDAT dateAndTime asTime subtractTime: beginDAT dateAndTime asTime) asSeconds seasideString, ' second(s)' ]