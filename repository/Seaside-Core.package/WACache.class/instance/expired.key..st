private
expired: anObject key: anInternalID
	anObject isNil ifFalse: [
		self notifyExpired: anObject key: anInternalID ]