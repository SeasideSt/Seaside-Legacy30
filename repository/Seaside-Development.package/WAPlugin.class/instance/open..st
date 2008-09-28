actions
open: aComponent
	"Replace the current page with aComponent."

	WARenderLoop new
		call: (aComponent
			addDecoration: (WAWindowDecoration new
				cssClass: self cssClass;
				title: self label;
				yourself);
			yourself)