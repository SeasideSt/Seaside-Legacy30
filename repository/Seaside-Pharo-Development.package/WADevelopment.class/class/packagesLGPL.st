accessing
packagesLGPL
	"Answer a list of Seaside LGPL licensed packages as PackageInfo instances. Its a hack because only the description can be currently used to filter the LGPL packages"
	^ ((GRPackage packages select: [:each | each description notNil and: ['*(LGPL)*' match: each description ] ]) sortBy: [ :a :b | a name < b name ]) collect: [ :each | PackageInfo named: each name ]