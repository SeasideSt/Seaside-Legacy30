*scriptaculous-components
scriptaculousComponents
	^ self new
		name: 'Scriptaculous-Components';
		description: 'A collection of AJAX based widgets written on top of script.aculo.us and Prototype.';
		addDependency: 'Scriptaculous-Core';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-Flow'; "Flow is used to implement #lightbox:"
		yourself