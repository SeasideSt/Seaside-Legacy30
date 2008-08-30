convenience
onEnter: aString 
	"If 'enter' is pressed"
	self onKeyPress: 'if((window.event ? window.event.keyCode : event.which) == 13){' , aString seasideString , '; return false}; return true'