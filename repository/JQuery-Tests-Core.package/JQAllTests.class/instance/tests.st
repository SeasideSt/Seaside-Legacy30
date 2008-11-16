configuration
tests
	^ Array 
		with: 'Examples' -> (Array 
			with: 'Ajax' -> JQAjaxFunctionalTest new
			with: 'Form' -> JQFormFunctionalTest new
			with: 'Counter' -> JQCounterFunctionalTest new)
		with: 'Other' -> (Array
			with: 'Animate' -> JQAnimateFunctionalTest new
			with: 'Effects' -> JQEffectFunctionalTest new)