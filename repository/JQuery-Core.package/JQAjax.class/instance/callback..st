callbacks
callback: aBlock
	"Defines aBlock as a callback of the receiver."
	
	self addParameter: (owner canvas callbacks registerAjaxCallback: aBlock)