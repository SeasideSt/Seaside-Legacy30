private
redirectToContinuation: aSessionContinuation
	self respond: [ :response |
		| snapshot |
		snapshot := WASnapshot new.
		aSessionContinuation setStates: snapshot; updateStates: snapshot.
		response redirectTo: aSessionContinuation registerForUrl ]