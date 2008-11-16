*jquery-ui-classes-animated
addClass: aString duration: aDurationOrString
	"Adds the specified class to each of the set of matched elements with a optional transition between the states."
	"aDurationOrString: A string representing one of the three predefined speeds ('slow', 'normal', or 'fast') or the number of milliseconds to run the animation (e.g. 1000)."
	
	self call: 'addClass' with: aString with: aDurationOrString