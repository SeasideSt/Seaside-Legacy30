*Seaside-Core
pluralize: aSingularString
	^ self pluralize: aSingularString with: (WAInflector pluralize: aSingularString)