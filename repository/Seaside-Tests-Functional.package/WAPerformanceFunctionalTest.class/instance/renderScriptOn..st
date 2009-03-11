rendering
renderScriptOn: canvas
	self
		renderDurationFor: [:html :idx | 
				html script: 'self.close()']
		key: #script
		on: canvas