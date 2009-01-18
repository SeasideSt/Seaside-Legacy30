private
createRenderContinuation
	"Answer a new render phase continuation."

	^ (self session preferenceAt: #renderPhaseContinuationClass) root: self root