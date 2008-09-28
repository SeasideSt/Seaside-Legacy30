rendering-stack
renderStackFrame: aContext on: html
	html definitionList: [
		self 
			renderObject: aContext
			labelled: 'thisContext'
			on: html.
		self 
			renderObject: aContext receiver
			labelled: 'self'
			on: html.
		aContext tempNames keysAndValuesDo: [ :index :name | 
			self 
				renderObject: (aContext tempAt: index)
				labelled: name
				on: html ] ]