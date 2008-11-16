*jquery-ui-classes-animated
switchClass: firstClassString to: secondClassString duration: aDurationOrString
	"Switches from the class defined in the first argument to the class defined as second argument, using a optional transition."
	"aDurationOrString: A string representing one of the three predefined speeds ('slow', 'normal', or 'fast') or the number of milliseconds to run the animation (e.g. 1000)."
	self call: 'switchClass' with: firstClassString with: secondClassString with: aDurationOrString