creational
newRenderPhaseContinuation
	"Answer a new render phase continuation."

	^ (self session preferenceAt: #renderPhaseContinuationClass) root: self root