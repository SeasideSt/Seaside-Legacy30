*Seaside-Core
seasideCore
	^ self new
		name: 'Seaside-Core';
		description: 'The core of Seaside, required for all packages.';
		addDependency: 'Seaside-Platform';
		yourself