rendering
renderScriptOn: canvas
	self
		renderDurationFor: [:html :idx | 
				html script: 'self.close()']
		title: 'Script Test'
		on: canvas