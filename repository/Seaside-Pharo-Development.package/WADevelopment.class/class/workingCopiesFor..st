monticello-accessing
workingCopiesFor: packages
	"Answer all the loaded working copies of Seaside."
	
	^ (MCWorkingCopy registry select: [ :each | packages includes: each packageInfo ])
		asSortedCollection: [ :a :b | a packageName < b packageName ]