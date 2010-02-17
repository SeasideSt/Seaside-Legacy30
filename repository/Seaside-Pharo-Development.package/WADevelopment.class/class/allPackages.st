accessing-packages
allPackages
	"Answer all Seaside related packages sorted alphabetically."
	
	^ GRPackage packages sortBy: [ :a :b | a name < b name ]