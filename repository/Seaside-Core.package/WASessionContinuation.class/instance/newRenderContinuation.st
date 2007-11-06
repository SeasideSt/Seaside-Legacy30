creational
newRenderContinuation
	"Answer a new render continuation."

	^ (self application preferenceAt: #renderContinuationClass) root: self root