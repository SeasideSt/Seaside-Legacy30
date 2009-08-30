*seaside-pharo-environment
seasideSqueakEnvironment
	^ self new
		name: 'Seaside-Pharo-Environment';
		addDependency: 'Seaside-Environment';
		addDependency: 'Seaside-Pharo-Core';
		yourself