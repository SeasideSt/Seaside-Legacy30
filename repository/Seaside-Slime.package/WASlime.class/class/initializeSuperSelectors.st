initialization
initializeSuperSelectors
	superSelectors := Dictionary new.
	superSelectors
		at: WAObject name put: #( initialize postCopy ) asSet;
		at: WAPainter name put: #( updateRoot: updateUrl: updateStates: ) asSet;
		at: WAPresenter name put: #( updateStates: ) asSet;
		at: WADecoration name put: #( renderContentOn: ) asSet;
		at: WABrush name put: #( setParent:canvas: with: ) asSet;
		at: WATagBrush name put: #( before after openTag closeTag ) asSet;
		at: WARequestFilter name put: #( handleFiltered: ) asSet