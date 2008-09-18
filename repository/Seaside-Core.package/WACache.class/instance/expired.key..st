private
expired: anObject key: anInternalID
	anObject isNil ifFalse: [
		self notifyExpired: anInternalID.
		expiryAction expired: anObject key: anInternalID ].