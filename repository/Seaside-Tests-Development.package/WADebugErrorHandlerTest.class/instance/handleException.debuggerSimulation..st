as yet unclassified
handleException: anException debuggerSimulation: debugBlock
	debugBlock ifCurtailed: [^  #aborted].
	anException resume