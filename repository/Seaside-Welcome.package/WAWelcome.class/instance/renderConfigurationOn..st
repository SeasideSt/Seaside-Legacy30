rendering
renderConfigurationOn: html
	html div
		class: #box;
		class: #configuration;
		with: [
			html heading level2 with: 'Configuration'.
				self renderDevToolsOn: html.
				self renderWalkbacksOn: html.
				self renderPasswordOn: html.
				self renderServerUrlOn: html.
				html paragraph: [
					html text: 'Go to full web-based '.
					html anchor url: '/config'; with: 'config app' ] ]