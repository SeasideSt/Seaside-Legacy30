rendering
renderCacheReplaceOn: html
	
	html paragraph: [
	"	html text: 'The cache is currently configured with the following plugins. To change the plugins you must '."
		html anchor
			title: 'Replace the cache to initialize all plugins';
			callback: [ self replaceCache ];
			with: 'Replace cache' ].