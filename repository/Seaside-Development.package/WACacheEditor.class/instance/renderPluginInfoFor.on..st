rendering
renderPluginInfoFor: aCachePlugin on: html
	html text: aCachePlugin class name.
	html space.
	html anchor
		callback: [ self session inNewRenderLoopCall: aCachePlugin configuration configurationComponent ];
		with: '(configure)'