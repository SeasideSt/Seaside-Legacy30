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
		self 
			tempNamesAndValuesIn: aContext 
			do: [ :name :value |
				self 
					renderObject: name
					labelled: value
					on: html ] ]