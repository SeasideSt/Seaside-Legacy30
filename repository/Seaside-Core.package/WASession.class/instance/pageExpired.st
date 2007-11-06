expiring
pageExpired
	((lastContinuation isKindOf: WASessionContinuation) and: [ lastContinuation states notNil ])
		ifTrue:  [ lastContinuation states restore ].
	self respond: [ :url |
		self application redirectHandler
			redirectPageExpiredTo: url ].
	WAPageExpired raiseSignal