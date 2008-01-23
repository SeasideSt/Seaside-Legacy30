rendering
renderContentOn: html
	"dont allow resizing at the top and the left side"
	super renderContentOn: html.
	html script: (html resizer id: self mainId; top:0; left:0).