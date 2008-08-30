testing-effect
testEffectMove
	self
		assert: (self effect move; x: 1; y: 2)
		equals: 'new Effect.Move(this,{x:1,y:2})'.
	self
		assert: (self effect move; id: 'foo'; duration: 1 second; x: 1; y: 2)
		equals: 'new Effect.Move("foo",{duration:1,x:1,y:2})'