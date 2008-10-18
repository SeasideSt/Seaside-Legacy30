initialization
initializeSuperSelectors
	superSelectors := Dictionary new.
	superSelectors
		at: WAPresenter name put: #( initialize updateRoot: updateStates: updateUrl: initialRequest: ) asSet;
		at: WATagBrush name put: #( initialize setParent:canvas: #with: ) asSet