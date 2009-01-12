transformations
ansiCompatibilityBooleans
	^ self
		rewrite: #(
			('``@expr1 and: [ | `@temp2 | ``@expr2 ] and: [ | `@temp3 | ``@expr3 ]'
			 '``@expr1 and: [ | `@temp2 | ``@expr2 and: [ | `@temp3 | ``@expr3 ] ]')
			('``@expr1 and: [ | `@temp2 | ``@expr2 ] and: [ | `@temp3 | ``@expr3 ] and: [ | `@temp4 | ``@expr4 ]'
			 '``@expr1 and: [ | `@temp2 | ``@expr2 and: [ | `@temp3 | ``@expr3 and: [ | `@temp4 | ``@expr4 ] ] ]')
			('``@expr1 and: [ | `@temp2 | ``@expr2 ] and: [ | `@temp3 | ``@expr3 ] and: [ | `@temp4 | ``@expr4 ] and: [  | `@temp5 | ``@expr5 ]'
			 '``@expr1 and: [ | `@temp2 | ``@expr2 and: [ | `@temp3 | ``@expr3 and: [ | `@temp4 | ``@expr4 and: [ | `@temp5 | ``@expr5 ] ] ] ]')
			('``@expr1 or: [ | `@temp2 | ``@expr2 ] or: [ | `@temp3 | ``@expr3 ]'
			 '``@expr1 or: [ | `@temp2 | ``@expr2 or: [ | `@temp3 | ``@expr3 ] ]')
			('``@expr1 or: [ | `@temp2 | ``@expr2 ] or: [ | `@temp3 | ``@expr3 ] or: [ | `@temp4 | ``@expr4 ]'
			 '``@expr1 or: [ | `@temp2 | ``@expr2 or: [ | `@temp3 | ``@expr3 or: [ | `@temp4 | ``@expr4 ] ] ]')
			('``@expr1 or: [ | `@temp2 | ``@expr2 ] or: [ | `@temp3 | ``@expr3 ] or: [ | `@temp4 | ``@expr4 ] or: [  | `@temp5 | ``@expr5 ]'
			 '``@expr1 or: [ | `@temp2 | ``@expr2 or: [ | `@temp3 | ``@expr3 or: [ | `@temp4 | ``@expr4 or: [ | `@temp5 | ``@expr5 ] ] ] ]'))
		methods: false
		name: 'ANSI Compatibility: Booleans'