exceptionDescription
defaultAction
	^ WAUnhandledNotificationError new
		notification: self;
		raiseSignal