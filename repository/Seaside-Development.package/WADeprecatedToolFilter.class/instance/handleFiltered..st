processing
handleFiltered: aRequestContext 
	[ super handleFiltered: aRequestContext ] 
		on: WADeprecatedApiNotification
		do: [ :notification | self deprecated: notification ]