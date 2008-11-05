private
withExceptionHandlers: aBlock
	^ self withUnregisteredHandler: [
		self withNotificationHandler: aBlock ]