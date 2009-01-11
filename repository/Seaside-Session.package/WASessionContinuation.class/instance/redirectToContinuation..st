private
redirectToContinuation: aSessionContinuation
	self respond: [ :response |
		aSessionContinuation setStates: self newStates.
		response redirectTo: aSessionContinuation registerForUrl ]