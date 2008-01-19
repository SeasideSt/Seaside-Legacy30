rendering
renderContentOn: html
	super renderContentOn: html.
	html script: (html resizer id: self mainId).