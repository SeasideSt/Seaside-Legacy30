configuration
tests
	^ Array 
		with: 'Examples' -> (Array 
			with: 'Updater' -> JQUpdaterTest
			with: 'Form' -> JQFormTest
			with: 'Counter' -> JQCounterTest)
		with: 'Other' -> (Array
			with: 'Animate' -> JQAnimateTest)