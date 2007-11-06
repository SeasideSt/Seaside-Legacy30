rendering-rows
renderRowActions: anEntryPoint named: aString on: html
	aString = self upDirectory ifTrue: [ ^ nil ].
	(WADispatcherPlugin allSubclassesOn: anEntryPoint for: self)
		do: [ :each | html render: each ]
		separatedBy: [ html text: ' ' ]