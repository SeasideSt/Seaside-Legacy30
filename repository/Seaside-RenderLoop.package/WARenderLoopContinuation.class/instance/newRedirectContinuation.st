creational
newRedirectContinuation
	"Answer a new redirect handler."

	^ (self application preferenceAt: #redirectContinuationClass) root: self root