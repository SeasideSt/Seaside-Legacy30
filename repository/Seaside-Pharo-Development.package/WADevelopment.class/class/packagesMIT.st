accessing
packagesMIT
	"Answer a list of Seaside MIT licensed packages as PackageInfo instances."
	^ ((GRPackage packages select: [:each | each isMIT ]) sorted: [ :a :b | a name < b name ]) collect: [ :each | PackageInfo named: each name ]