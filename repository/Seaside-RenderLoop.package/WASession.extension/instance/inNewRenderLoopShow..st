*seaside-renderloop
inNewRenderLoopShow: aComponent
	((self preferenceAt: #renderPhaseContinuationClass) root: aComponent) value