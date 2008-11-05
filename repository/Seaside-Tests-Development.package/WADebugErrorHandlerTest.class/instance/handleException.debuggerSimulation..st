private
handleException: anException debuggerSimulation: debugBlock
	debugBlock ifCurtailed: [^  #aborted].
	anException resume