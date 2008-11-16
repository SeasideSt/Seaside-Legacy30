*jquery-ui-classes-animated
toggleClass: aString duration: aDurationOrString
	"Adds the specified class if it is not present, removes the specified class if it is present, using a optional transition."
	"aDurationOrString: A string representing one of the three predefined speeds ('slow', 'normal', or 'fast') or the number of milliseconds to run the animation (e.g. 1000)."
	
	self call: 'toggleClass' with: aString with: aDurationOrString