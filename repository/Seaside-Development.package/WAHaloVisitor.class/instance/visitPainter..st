visiting
visitPainter: aPainter 
	| renderer halo |
	(self renderContext halosEnabled and: [ aPainter canHaveHalo ]) 
		ifTrue: [
			halo := self toolDecoration haloFor: aPainter.
			renderer := halo rendererClass context: self renderContext.
			renderer render: halo.
			renderer flush ]
		ifFalse: [ visitor visit: aPainter ]
	