private
withNotificationHandler: aBlock
	^ aBlock on: WARenderNotification , WAPageExpired do: [ :n | ]