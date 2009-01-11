testing-possible
testChangesStateWhileRendering
	self 
		run: WASlimeBlockLintRule changesStateWhileRendering
		selectors: #(#renderChangesStateWhileRenderingOn: )