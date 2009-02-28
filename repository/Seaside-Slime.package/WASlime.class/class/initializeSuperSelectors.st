initialization
initializeSuperSelectors
	superSelectors := Dictionary new.
	superSelectors
		at: #WAObject put: #( initialize postCopy );
		at: #WAPainter put: #( updateRoot: updateUrl: );
		at: #WAPresenter put: #( updateStates: );
		at: #WADecoration put: #( renderContentOn: );
		at: #WABrush put: #( setParent:canvas: with: );
		at: #WATagBrush put: #( before after openTag closeTag );
		at: #WARequestFilter put: #( handleFiltered: updateStates: );
		at: #WASession put: #( updateRoot: updateUrl: updateStates: )