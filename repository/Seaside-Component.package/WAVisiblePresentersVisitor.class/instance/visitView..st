visiting
visitView: aView
	super visitView: aView.
	aView children do: [ :each | each acceptDecorated: self ]