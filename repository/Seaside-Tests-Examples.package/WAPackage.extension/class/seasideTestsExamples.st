*seaside-tests-examples
seasideTestsExamples
	^ self new
		name: 'Seaside-Tests-Examples';
		description: 'Unit tests for Seaside-Examples.';
		addDependency: 'Seaside-Examples';
		addDependency: 'Seaside-Tests-Core';
		yourself