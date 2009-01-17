transformations
ansiCompatibilityExceptions
	^ self
		rewrite: #(
			('``@block on: `class do: [ | `@temps | ``@body ]'
			 '``@block on: `class do: [ :err |  | `@temps | ``@body ]'))
		methods: false
		name: 'ANSI Compatibility: Exceptions'