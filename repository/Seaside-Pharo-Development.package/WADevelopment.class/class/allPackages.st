accessing-packages
allPackages
	"Answer all Seaside related packages sorted alphabetically."
	
	^ GRPackage grPackages sort: [ :a :b | a name < b name ]