*seaside-tools-core
seasideToolsCore
	^ self new
		name: 'Seaside-Tools-Core';
		description: 'Administrative tools, useful to have for production and development environments.';
		addDependency: 'Seaside-Core'; "only for deprecated class-side method extensions"
		addDependency: 'Seaside-Component'; "only for deprecated class-side method extension"
		addDependency: 'Seaside-RenderLoop'; "for class references in WAAdmin"
		addDependency: 'Seaside-Session'; "for class reference in WAAdmin"
		yourself