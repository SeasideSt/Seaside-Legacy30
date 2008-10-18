actions
open: aComponent
	"Replace the current page with aComponent."

	self session inNewRenderLoopShow:
		(aComponent
			addDecoration: (WAWindowDecoration new
				cssClass: self cssClass;
				title: self label;
				yourself);
			yourself)