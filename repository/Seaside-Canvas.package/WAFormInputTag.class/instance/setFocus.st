javascript
setFocus
	"Makes this element have the initial focus once the page is loaded aka autofocus."
	self ensureId.
	self requestContext addLoadScript: 'setFocus(' , self id printString , ')'