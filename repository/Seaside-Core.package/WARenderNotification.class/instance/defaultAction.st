exceptiondescription
defaultAction
	^ WAUnhandledNotificationError new
		notification: self;
		raiseSignal