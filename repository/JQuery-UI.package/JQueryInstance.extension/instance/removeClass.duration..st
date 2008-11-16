*jquery-ui-classes-animated
removeClass: aString duration: aDurationOrString
	"Removes the specified class from the set of matched elements with a optional transition."
	"aDurationOrString: A string representing one of the three predefined speeds ('slow', 'normal', or 'fast') or the number of milliseconds to run the animation (e.g. 1000)."
	self call: 'removeClass' with: aString with: aDurationOrString