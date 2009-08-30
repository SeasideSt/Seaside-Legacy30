private
paddedHours
	^ WAPluggablePrinter
		on: [ :duration |
			| hours days |
			hours := duration hours.
			days := duration days.
			(hours isZero and: [ days isZero ])
				ifTrue: [ '' ]
				ifFalse: [
					((WANumberPrinter new padding: $0; digits: 2) print: hours),
						(hours = 1 ifTrue: [ ' hr ' ] ifFalse: [ ' hrs ' ]) ] ]