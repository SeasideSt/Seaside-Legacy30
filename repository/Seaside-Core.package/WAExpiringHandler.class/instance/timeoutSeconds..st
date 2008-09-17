deprecated
timeoutSeconds: aNumber
	self deprecatedApi: 'WAExpiringHandler now has pluggable expiry policies.'.
	^ self policy timeoutSeconds: aNumber