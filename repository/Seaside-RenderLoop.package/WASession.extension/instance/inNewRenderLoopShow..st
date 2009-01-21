*seaside-renderloop
inNewRenderLoopShow: aComponent
	"This is buggy. With partial continuations it doesn't result in the original root
	being restored."
	((self preferenceAt: #renderPhaseContinuationClass) root: aComponent) captureAndInvoke