filtering
sliceFrom: aStartInteger to: aStopInteger
	"Selects a subset of the matched elements."
	
	self call: 'slice' with: aStartInteger with: aStopInteger