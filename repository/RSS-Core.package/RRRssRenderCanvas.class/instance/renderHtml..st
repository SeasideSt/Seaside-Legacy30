convenience
renderHtml: aOneArgumentBlock
	"convenvience method to render html
	aOneArgumentBlock will be passed an html canvas"
	self text: (WARenderCanvas builder render: aOneArgumentBlock)