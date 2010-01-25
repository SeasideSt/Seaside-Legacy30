testing-transform
testAnsiCollectionsRule
	self 
		run: WAAnsiCollectionsRule new
		changes: #( 
			'withIndexDo #() keysAndValuesDo: [ :index :each | each + index ]'
			'doWithIndex #() keysAndValuesDo: [ :index :each | each + index ]'
			'collectThenDo (#() collect: [ :a | a ]) do: [ :b | b ]'
			'selectThenDo (#() select: [ :a | true ]) do: [ :b | b ]'
			'rejectThenDo (#() reject: [ :a | true ]) do: [ :b | b ]'
			'selectThenCollect (#() select: [ :a | true ]) collect: [ :b | b ]'
			'pairsDo |array| array := #(1 2 3 4). 1 to: array size by: 2 do: [ :index | |a b| a := array at: index. b := array at: index + 1. b ]'
			'collectThenSelect (#() collect: [ :a | a ]) select: [ :b | true ]'
			'detectSum #(''abc'' ''def'') inject: 0 into: [ :sum :each | sum + (each size) ]'
			'detectSumMultiline #(''abc'' ''def'') inject: 0 into: [ :sum :each | #foo copy. sum + (each size) ]'
			'valuesDo #() do: [ :a | a ]'
			'keysSortedSafely Dictionary new keys asSortedCollection'
		)