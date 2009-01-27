*seaside-flow
suspendCallbackDo: aBlock
	"Evaluate aBlock, passing in a continuation that can be evaluated to answer to the place where this very method was called. This method is presumed to be executed only within the scope of an executing WAActionCallback and should, ideally, create a continuation that includes only the contexts that make up the callback execution (a partial continuation). Do not use this method, if you don't understand this comment."
	self subclassResponsibility