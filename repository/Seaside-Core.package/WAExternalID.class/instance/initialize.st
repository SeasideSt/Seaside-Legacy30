private
initialize
	GeneratorMutex critical: [
		1 to: self size do: [ :index |
			self at: index put: (GeneratorSpace atRandom: Generator) ] ]