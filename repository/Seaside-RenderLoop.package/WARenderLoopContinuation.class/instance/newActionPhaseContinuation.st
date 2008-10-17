creational
newActionPhaseContinuation
	"Answer a new action phase continuation."

	^ (self session preferenceAt: #actionPhaseContinuationClass) root: self root