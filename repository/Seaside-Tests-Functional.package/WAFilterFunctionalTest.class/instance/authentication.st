actions
authentication
	self authenticateWith: self during: [ child inform: 'Congratulations, you have been authenticated. The new filter should be visible in the list above. Clicking on "ok" should remove the filter. Using the back button and hitting refresh should show the filter again.' ]