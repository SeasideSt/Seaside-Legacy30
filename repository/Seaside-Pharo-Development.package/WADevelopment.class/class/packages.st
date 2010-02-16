accessing
packages
	"Answer a list of Seaside related packages as PackageInfo instances."

	^ (GRPackage packages sortBy: [ :a :b | a name < b name ]) collect: [ :each | PackageInfo named: each name ]