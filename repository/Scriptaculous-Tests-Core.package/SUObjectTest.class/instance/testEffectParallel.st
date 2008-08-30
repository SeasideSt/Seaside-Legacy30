testing-effect
testEffectParallel
	self
		assert: (self effect parallel: (Array with: self factory effect fade with: self factory effect slideUp))
		equals: 'new Effect.Parallel([new Effect.Fade(this),new Effect.SlideUp(this)])'.
	self
		assert: (self effect fps: 12; parallel: (Array with: self factory effect fade with: self factory effect slideUp))
		equals: 'new Effect.Parallel([new Effect.Fade(this),new Effect.SlideUp(this)],{fps:12})'