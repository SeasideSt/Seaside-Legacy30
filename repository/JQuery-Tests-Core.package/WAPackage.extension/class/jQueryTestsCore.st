*jquery-tests-core
jQueryTestsCore
	^ self new
		name: 'JQuery-Tests-Core';
		description: 'Functional and unit tests for the JQuery-Core package.';
		addDependency: 'JQuery-Core';
		addDependency: 'Javascript-Tests-Core';
		addDependency: 'Seaside-Development';
		yourself