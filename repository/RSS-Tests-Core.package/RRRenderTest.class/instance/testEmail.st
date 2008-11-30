testing
testEmail
	| acutalContent expectedContent |
	acutalContent := self render: [ :rss |
		rss author: (WAEmailAddress address: 'joesmith@example.com' username: 'Joe Smith'). ].
	expectedContent := 'Joe Smith &lt;joesmith@example.com&gt;'.
	self assert: acutalContent = expectedContent