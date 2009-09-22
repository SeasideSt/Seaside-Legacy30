rendering-rows
renderRowActions: anEntryPoint named: aString on: html
	((Array with: (WAConfigureDispatcherPlugin on: anEntryPoint for: self))
		select: [ :each | each isActive ])
			do: [ :each | html render: each ]
			separatedBy: [ html space]