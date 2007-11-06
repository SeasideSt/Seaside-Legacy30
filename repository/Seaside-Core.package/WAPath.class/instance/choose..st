behavior
choose: anAssociation
	"Install a new stack of navigation from the old one and the specified association."

	| newStack |
	newStack := Array new writeStream.
	stack do:
		[:ea |
		newStack nextPut: ea.
		ea == anAssociation
			ifTrue: [stack := newStack contents. ^ self]]