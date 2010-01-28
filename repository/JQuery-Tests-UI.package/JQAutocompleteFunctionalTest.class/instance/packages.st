querying
packages
	^ packages ifNil: [ packages := GRPackage packages sortBy: [ :a :b | a name < b name ] ]