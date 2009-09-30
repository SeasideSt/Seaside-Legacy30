initialization
initialize
	super initialize.
	showHalos := WAValueHolder with: false.
	halos := GRPlatform current weakDictionaryOfSize: 20