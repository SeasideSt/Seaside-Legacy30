running
tearDown
	"Release the response, in case it has been allocated."

	super tearDown.
	response notNil
		ifTrue: [ response release ]