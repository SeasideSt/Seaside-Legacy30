rendering-rows
renderRowActions: anEntryPoint named: aString on: html
	aString = self upDirectory ifTrue: [ ^ nil ].
	((Array with: (WAConfigureDispatcherPlugin on: anEntryPoint for: self))
		select: [ :each | each isActive ])
			do: [ :each | html render: each ]
			separatedBy: [ html space]