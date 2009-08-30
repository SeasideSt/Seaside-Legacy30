accessing
packages
	"Answer a list of Seaside related packages as PackageInfo instances."
	
	^ (WAPackage packages 
		sortBy: [ :a :b | a name < b name ])
		collect: [ :each | PackageInfo named: each name ]