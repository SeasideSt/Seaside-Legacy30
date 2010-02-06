accessing
packagesLGPL
	"Answer a list of Seaside LGPL licensed packages as PackageInfo instances"
	^ ((GRPackage packages select: [:each | each isLGPL ]) sortBy: [ :a :b | a name < b name ]) collect: [ :each | PackageInfo named: each name ]