*scriptaculous-tests-core
scriptaculousTestsCore
	^ self new
		name: 'Scriptaculous-Tests-Core';
		description: 'Functional and unit tests for the Scriptaculous-Core package.';
		addDependency: 'Scriptaculous-Core';
		addDependency: 'Javascript-Tests-Core';
		addDependency: 'Seaside-Tests-Functional';
		yourself