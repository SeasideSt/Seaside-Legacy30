convenience
onEnter: anObject 
	"If 'enter' is pressed"
	self onKeyPress: 'if((window.event ? window.event.keyCode : event.which) == 13){' , anObject greaseString , '; return false}; return true'