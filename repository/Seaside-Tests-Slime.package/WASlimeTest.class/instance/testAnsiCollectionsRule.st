testing-transform
testAnsiCollectionsRule
	self 
		run: WAAnsiCollectionsRule new
		changes: #( 
			'withIndexDo #() keysAndValuesDo: [ :index :each | each + index ]'
			'collectThenDo (#() collect: [ :a | a ]) do: [ :b | b ]' )