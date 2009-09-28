rendering
renderCacheReplaceOn: html
	
	html paragraph: [
	"	html text: 'The cache is currently configured with the following plugins. To change the plugins you must '."
		html anchor
			class: 'large';
			title: 'Replace the cache to initialize all plugins';
			callback: [ self replaceCache ];
			with: 'Replace cache' ].