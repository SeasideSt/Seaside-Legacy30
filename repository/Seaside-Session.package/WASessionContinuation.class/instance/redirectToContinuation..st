private
redirectToContinuation: aSessionContinuation
	self respond: [ :response |
		aSessionContinuation updateStates.
		response redirectTo: aSessionContinuation registerForUrl ]