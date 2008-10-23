*Seaside-Environment
seasideEnvironment
	^ self new
		name: 'Seaside-Environment';
		description: 'foo';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-RenderLoop';
		addDependency: 'Seaside-Session';
		addDependency: 'Seaside-Canvas';
		yourself