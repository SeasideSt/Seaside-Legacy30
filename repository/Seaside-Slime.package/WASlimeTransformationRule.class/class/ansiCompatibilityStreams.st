transformations
ansiCompatibilityStreams
	^ self
		rewrite: #(
			('`{ :node :context | node isVariable and: [ (Smalltalk includesKey: node name asSymbol) not and: [ context at: ''`receiver'' ifAbsentPut: [ node ]. true ] ] } cr'
			 '`{ :context | context at: ''`receiver'' } nextPut: Character cr')
			('`{ :node :context | node isVariable and: [ (Smalltalk includesKey: node name asSymbol) not and: [ context at: ''`receiver'' ifAbsentPut: [ node ]. true ] ] } lf'
			 '`{ :context | context at: ''`receiver'' } nextPut: Character lf')
			('``@stream nextPut: Character cr; nextPut: Character lf'
			 '``@stream crlf')
			('``@collection writeStream'
			 'WriteStream on: ``@collection'))
		methods: false
		name: 'ANSI Compatibility: Streams'