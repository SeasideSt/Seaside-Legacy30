transformations
ansiCompatibilityConditionals
	^ self
		rewrite: #(
			" kill abnormalities "
			('``@boolean ifNotNilDo: ``@block'
			 '``@boolean ifNotNil: ``@block')
			('``@boolean ifNotNilDo: ``@block1 ifNil: ``@block2'
			 '``@boolean ifNotNil: ``@block1 ifNil: ``@block2')
			('``@boolean ifNil: ``@block1 ifNotNilDo: ``@block2'
			 '``@boolean ifNil: ``@block1 ifNotNil: ``@block2')
			" normalize arguments "
			('``@boolean ifNotNil: [ | `@temps | ``@body ]'
			 '``@boolean ifNotNil: [ :arg | | `@temps | ``@body ]')
			('``@boolean ifNotNil: [ | `@temps | ``@body ] ifNil: ``@block '
			 '``@boolean ifNotNil: [ :arg | | `@temps | ``@body ] ifNil: ``@block')
			('``@boolean ifNil: ``@block ifNotNil: [ | `@temps | ``@body ]'
			 '``@boolean ifNil: ``@block ifNotNil: [ :arg | | `@temps | ``@body ]'))
		methods: false
		name: 'ANSI Compatibility: Conditionals'