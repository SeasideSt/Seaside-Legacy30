*Seaside-Tests-RenderLoop
seasideTestsRenderLoop
	^ self new
		name: 'Seaside-Tests-RenderLoop';
		description: 'foo';
		addDependency: 'Seaside-RenderLoop';
		addDependency: 'Seaside-Tests-Session';
		yourself