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
		name: 'Rename WASession>>#expired to #unregistered'