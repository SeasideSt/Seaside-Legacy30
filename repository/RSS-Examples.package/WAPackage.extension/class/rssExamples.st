*rss-examples
rssExamples
	^ self new
		name: 'RSS-Examples';
		description: 'Examples of how to use the "RSS-Core" package.';
		addDependency: 'RSS-Core';
		"for WABrowser"
		addDependency: 'Seaside-Development'
		yourself