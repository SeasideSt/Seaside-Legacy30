evaluating
invoke: aBlock
	"Invoke the continuation and evaluates aBlock within the captured execution context."

	| activation |
	aBlock fixTemps.
	self terminate: thisContext.
	self restoreValues.
	activation := aBlock asContext.
	activation swapSender: values first.
	thisContext swapSender: activation