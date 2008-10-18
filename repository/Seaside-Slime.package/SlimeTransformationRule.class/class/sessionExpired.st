transformations
sessionExpired
	^self
		rewrite: #(
			#('expired 
					| `@temps | 
					`@.Statements'
			"->"
			'unregistered
					| `@temps | 
					`@.Statements'))
		methods: true
		name: 'Rename session #expired -> #unregistered'