*Seaside-RenderLoop
inNewRenderLoopShow: aComponent
	((self preferenceAt: #renderPhaseContinuationClass) root: aComponent) value: nil