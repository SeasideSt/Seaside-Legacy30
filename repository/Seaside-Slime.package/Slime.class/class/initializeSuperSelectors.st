initialization
initializeSuperSelectors
	superSelectors := Dictionary new.
	superSelectors
		at: WAObject name put: #(initialize postCopy) asSet;
		at: WAPainter name put: #(updateRoot: updateUrl:) asSet;
		at: WATagBrush name put: #(setParent:canvas: with: before after openTag closeTag) asSet;
		at: WARequestFilter name put: #(responseForContext:) asSet