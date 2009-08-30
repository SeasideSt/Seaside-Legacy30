monticello-accessing
workingCopies
	"Answer all the loaded working copies of Seaside."
	
	^ (MCWorkingCopy registry
		select: [ :each | self packages includes: each packageInfo ])
		asSortedCollection: [ :a :b | a packageName < b packageName ]