*comet-core
cometCore
	^ self new
		name: 'Comet-Core';
		description: 'Stream events from the server to client.';
		addDependency: 'Javascript-Core';
		addDependency: 'Seaside-Canvas';
		yourself