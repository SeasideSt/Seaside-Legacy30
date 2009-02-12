initialization
initialize
	super initialize.
	showHalos := WAValueHolder with: false.
	halos := WAPlatform current weakDictionaryOfSize: 20