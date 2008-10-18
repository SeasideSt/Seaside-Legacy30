testing-possible
testChangesStateWhileRendering
	self 
		run: SlimeBlockLintRule changesStateWhileRendering
		selectors: #(renderChangesStateWhileRenderingOn:)