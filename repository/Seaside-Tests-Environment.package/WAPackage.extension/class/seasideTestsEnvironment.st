*Seaside-Tests-Environment
seasideTestsEnvironment
	^ self new
		name: 'Seaside-Tests-Environment';
		description: 'foo';
		addDependency: 'Seaside-Environment';
		addDependency: 'Seaside-Tests-Component';
		addDependency: 'Seaside-Tests-RenderLoop';
		addDependency: 'Seaside-Tests-Session';
		addDependency: 'Seaside-Tests-Canvas';
		yourself