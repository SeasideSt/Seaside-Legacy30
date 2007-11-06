private
initialize
	GeneratorMutex critical: [
		1 to: self size do: [ :index |
			self at: index put: ((($a to: $z), ($A to: $Z)) atRandom: Generator) asInteger ] ]