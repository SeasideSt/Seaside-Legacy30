private
createActionContinuation
	"Answer a new action phase continuation."

	^ (self session preferenceAt: #actionPhaseContinuationClass) new
			setStates: self states;
			yourself