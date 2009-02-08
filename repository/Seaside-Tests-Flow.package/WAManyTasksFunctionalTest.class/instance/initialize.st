initialization
initialize
	super initialize.
	tasks := OrderedCollection new.
	selection := WAValueHolder new.
	tasks add: WAConvenienceFunctionalTest new