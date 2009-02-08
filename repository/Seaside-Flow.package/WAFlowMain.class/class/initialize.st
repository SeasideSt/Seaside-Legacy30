class initialization
initialize
	WAAdmin applicationDefaults
		at: #mainClass put: WAFlowMain;
		at: #actionPhaseContinuationClass put: WAFlowActionPhaseContinuation