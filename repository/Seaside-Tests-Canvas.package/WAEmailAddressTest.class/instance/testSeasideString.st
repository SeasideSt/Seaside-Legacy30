testing
testSeasideString
	| address |
	address := WAEmailAddress
		address: 'philippe.marschall@gmail.com'
		username: 'Philippe Marschall'.
	self assert: address seasideString = '"Philippe Marschall" <philippe.marschall@gmail.com>'