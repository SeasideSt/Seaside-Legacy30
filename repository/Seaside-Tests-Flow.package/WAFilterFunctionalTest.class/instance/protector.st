actions
protector
	self filterWith: WAProtectionFilter new during: [ child inform: 'Open this page on a different computer by copying the complete URL to a machine with a different IP address. Seaside should reply with a forbidden message. Closing this dialog should remove the filter.' ]