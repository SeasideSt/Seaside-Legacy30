visiting
visitPainter: aPainter 
	| halo |
	(self renderContext halosEnabled and: [ aPainter canHaveHalo ]) 
		ifTrue: [
			halo := self toolDecoration haloFor: aPainter.
			halo renderWithContext: self renderContext ]
		ifFalse: [ visitor visit: aPainter ]
	