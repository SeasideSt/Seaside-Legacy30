rendering
renderPluginInfoFor: aCachePlugin on: html
	html text: aCachePlugin class name.
	html space.
	html anchor
		callback: [ self session presenter show: aCachePlugin configuration configurationComponent ];
		with: '(configure)'