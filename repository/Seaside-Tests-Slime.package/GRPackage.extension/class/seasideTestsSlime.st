*seaside-tests-slime
seasideTestsSlime
	^ self new
		name: 'Seaside-Tests-Slime';
		description: 'Unit tests for the package Seaside-Slime.';
		addDependency: 'Seaside-Slime';
		addDependency: 'Seaside-Tests-Component';
		yourself