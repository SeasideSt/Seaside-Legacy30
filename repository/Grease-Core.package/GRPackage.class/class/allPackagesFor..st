querying
allPackagesFor: aSetOfPackages
	"Answer a linear list of packages required to load aSetOfPackages."

	^ aSetOfPackages 
		inject: OrderedCollection new
		into: [ :package :result | package addDependenciesTo: result ]