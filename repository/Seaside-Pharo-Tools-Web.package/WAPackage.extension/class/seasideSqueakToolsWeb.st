*seaside-pharo-tools-web
seasideSqueakToolsWeb
	^ self new
		name: 'Seaside-Pharo-Tools-Web';
		description: 'Pharo-specific web-based administration tools for Seaside.';
		addDependency: 'Seaside-Tools-Web';
		addDependency: 'Seaside-Pharo-Core';
		yourself