*seaside-pharo-environment
seasidePharoEnvironment
	^ self new
		name: 'Seaside-Pharo-Environment';
		addDependency: 'Seaside-Environment';
		addDependency: 'Seaside-Pharo-Core';
		yourself