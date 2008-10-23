*Scriptaculous-Tests-Components
scriptaculousTestsComponents
	^ self new
		name: 'Scriptaculous-Tests-Components';
		description: 'Functional and unit tests for the Scriptaculous-Components package.';
		addDependency: 'Scriptaculous-Components';
		addDependency: 'Seaside-Tests-Component';
		yourself