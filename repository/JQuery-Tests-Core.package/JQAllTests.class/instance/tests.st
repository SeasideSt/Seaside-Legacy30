configuration
tests
	^ Array 
		with: 'Examples' -> (Array 
			with: 'Updater' -> JQUpdaterTest new
			with: 'Form' -> JQFormTest new
			with: 'Counter' -> JQCounterTest new)
		with: 'Other' -> (Array
			with: 'Animate' -> JQAnimateTest new)