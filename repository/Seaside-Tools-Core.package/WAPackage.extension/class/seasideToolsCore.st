*seaside-tools-core
seasideToolsCore
	^ self new
		name: 'Seaside-Tools-Core';
		description: 'Administrative tools, useful to have for production and development environments.';
		addDependency: 'Seaside-Core';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-RenderLoop';
		addDependency: 'Seaside-Session';
		addDependency: 'Seaside-Canvas';
		yourself