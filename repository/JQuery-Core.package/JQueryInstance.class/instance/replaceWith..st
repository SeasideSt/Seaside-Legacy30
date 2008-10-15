modifying
replaceWith: aRenderable 
	"Replaces all matched elements with the specified HTML or DOM elements. This returns the JQuery element that was just replaced, which has been removed from the DOM."
	
	self call: 'replaceWith' with: (self render: aRenderable)