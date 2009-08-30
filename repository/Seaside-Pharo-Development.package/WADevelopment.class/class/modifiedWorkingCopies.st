monticello-accessing
modifiedWorkingCopies
	"Answer all the modified working copies of Seaside."
	
	^ self workingCopies select: [ :each | each modified ]