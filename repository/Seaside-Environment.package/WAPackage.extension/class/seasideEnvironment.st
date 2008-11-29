*seaside-environment
seasideEnvironment
	^ self new
		name: 'Seaside-Environment';
		description: 'Administrative tools, useful to have for productive and development environments.';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-RenderLoop';
		addDependency: 'Seaside-Session';
		addDependency: 'Seaside-Canvas';
		yourself