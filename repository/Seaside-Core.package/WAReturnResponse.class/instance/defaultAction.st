public
defaultAction
	^ WAUnhandledNotificationError new
		notification: self;
		raiseSignal