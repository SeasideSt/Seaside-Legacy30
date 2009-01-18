private
createActionContinuation
	"Answer a new action phase continuation."

	^ ((self session preferenceAt: #actionPhaseContinuationClass) root: self root)
			setStates: self states;
			yourself