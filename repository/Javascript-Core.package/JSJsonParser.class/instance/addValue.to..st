adding
addValue: anObject to: aCollection
	"Add anObject to aColleciton. 	Subclasses might want to refine this implementation."

	^ aCollection 
		add: anObject;
		yourself