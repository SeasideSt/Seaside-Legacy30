rendering
renderDevToolsOn: html
	html paragraph: [
		html text: 'Development tools: [ '.
		self callback: [ WAAdmin enableDevelopmentTools ] labeled: 'enable' on: html if: WAAdmin developmentToolsEnabled not.
		html text: ' / '.
		self callback: [ WAAdmin disableDevelopmentTools ] labeled: 'disable' on: html if: WAAdmin developmentToolsEnabled.
		html text: ' ]' ]