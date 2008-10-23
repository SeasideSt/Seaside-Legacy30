*JQuery-Tests-UI
jQueryTestsUI
	^ self new
		name: 'JQuery-Tests-UI';
		description: 'Functional and unit tests for the JQuery-UI package.';
		addDependency: 'JQuery-UI';
		addDependency: 'JQuery-Tests-Core';
		yourself