accessing
policy
	^ policy ifNil: [ policy := WATimeoutExpiryPolicy new ]