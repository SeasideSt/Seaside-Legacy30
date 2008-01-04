scripting
scriptToggle: aComponent on: aScript
	| previous |
	previous := self visible copy.
	self toggle: aComponent.
	(previous difference: self visible)
		do: [ :each | self scriptHide: each on: aScript ].
	(self visible difference: previous)
		do: [ :each | self scriptShow: each on: aScript ]