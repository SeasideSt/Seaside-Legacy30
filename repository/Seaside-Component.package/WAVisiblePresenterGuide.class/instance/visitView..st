visiting
visitView: aView
	super visitView: aView.
	aView childrenDo: [ :each | self visit: each ]