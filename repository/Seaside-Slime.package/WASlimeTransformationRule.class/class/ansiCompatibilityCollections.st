transformations
ansiCompatibilityCollections
	^ self
		rewrite: #(	
			('``@collection withIndexDo: [ :`each :`index |  | `@temps | ``@body ]'
			 '``@collection keysAndValuesDo: [ :`index :`each |  | `@temps | ``@body ]')
			('``@collection collect: ``@block1 thenDo: ``@block2'
			 '(``@collection collect: ``@block1) do: ``@block2')
			('``@collection collect: ``@block1 thenSelect: ``@block2'
			 '(``@collection collect: ``@block1) select: ``@block2')
			('``@collection pairsDo: [ :`t1 :`t2 | ``@statements ]'
			 '1 to: ``@collection size by: 2 do:  [ :index | | `t1 `t2 | t1 := ``@collection at: index. t2 := ``@collection at: index + 1. ``@statements ]')
			('``@collection reject: ``@block1 thenDo: ``@block2'
			 '(``@collection reject: ``@block1) do: ``@block2')
			('``@collection select: ``@block1 thenCollect: ``@block2'
			 '(``@collection select: ``@block1) collect: ``@block2')
			('``@collection select: ``@block1 thenDo: ``@block2'
			 '(``@collection select: ``@block1) do: ``@block2'))			
		methods: false
		name: 'ANSI Compatibility: Collections'