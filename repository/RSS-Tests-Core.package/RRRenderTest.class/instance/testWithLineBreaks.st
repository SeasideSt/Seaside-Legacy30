testing
testWithLineBreaks
	| acutalContent expectedContent |
	acutalContent := self render: [ :rss |
		rss withLineBreaks: 'das
super
geile
Blog' ].
	expectedContent := 'das&lt;br/&gt;super&lt;br/&gt;geile&lt;br/&gt;Blog'.
	self assert: acutalContent = expectedContent