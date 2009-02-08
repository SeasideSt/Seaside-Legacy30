running
execute
	"Start the task running. Subclasses should usually implement #go to specify behaviour."
	
	[ self answer: self go ] repeat