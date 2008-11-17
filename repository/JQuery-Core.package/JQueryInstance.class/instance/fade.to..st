effects
fade: aDuration to: anNumber
	"Fade the opacity of all matched elements to a specified opacity and firing an optional callback after completion."
	
	self call: 'fadeTo' with: aDuration with: anNumber