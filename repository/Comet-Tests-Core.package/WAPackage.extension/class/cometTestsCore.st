*comet-tests-core
cometTestsCore
	^ self new
		name: 'Comet-Tests-Core';
		description: 'Unit tests for the Comet-Tests-Core package.';
		addDependency: 'Comet-Core';
		addDependency: 'Seaside-Tests-Core';
		yourself