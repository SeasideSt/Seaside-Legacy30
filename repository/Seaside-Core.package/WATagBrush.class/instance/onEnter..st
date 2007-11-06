convenience
onEnter: aString
	"If 'enter' is pressed"
	self onKeyPress: 'if((window.event ? window.event.keyCode : event.which) == 13){', aString displayString, '; return false}; return true'