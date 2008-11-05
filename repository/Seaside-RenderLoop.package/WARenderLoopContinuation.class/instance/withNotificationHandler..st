private
withNotificationHandler: aBlock
	^ aBlock on: WARenderNotification do: [ :n | ]