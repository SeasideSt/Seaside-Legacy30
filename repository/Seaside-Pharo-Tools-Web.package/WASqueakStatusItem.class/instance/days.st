private
days
	^ WAPluggablePrinter
		on: [ :duration |
			| days |
			days := duration days.
			days > 0
				ifTrue: [ (days pluralize: 'day') , ' ' ]
				ifFalse: [ '' ] ]