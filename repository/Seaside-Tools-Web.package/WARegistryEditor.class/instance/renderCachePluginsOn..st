rendering
renderCachePluginsOn: html
	html paragraph: [
		html text: 'The cache is currently configured with the following plugins. To change the plugins you must '.
		html anchor
			callback: [ self replaceCache ];
			with: 'replace the cache' ].
	html render: cacheEditor