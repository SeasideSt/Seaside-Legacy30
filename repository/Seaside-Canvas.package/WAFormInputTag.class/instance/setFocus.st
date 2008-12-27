deprecated
setFocus
	"Makes this element have the initial focus once the page is loaded aka autofocus."
	
	self
		seasideDeprecatedApi: 'WAFormInputTag>>#setFocus'
		details: 'Use an appropriate Javascript library instead.'.
	self requestContext
		addLoadScript: 'document.getElementById(' , self ensureId printString , ').focus()'