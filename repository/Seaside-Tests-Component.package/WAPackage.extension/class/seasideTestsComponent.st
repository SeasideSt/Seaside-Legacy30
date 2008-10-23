*Seaside-Tests-Component
seasideTestsComponent
	^ self new
		name: 'Seaside-Tests-Component';
		description: 'Unit tests for the package Seaside-Component.';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-Tests-Core';
		yourself