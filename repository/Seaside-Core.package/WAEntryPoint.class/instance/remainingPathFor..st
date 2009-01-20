public
remainingPathFor: aRequestContext
	"Answer a collection of the remaining path elements after the receiving entry point, or nil."
	
	| url |
	url := WAUrl new.
	url addAllToPath: self path.
	^ url relativeTo: aRequestContext request url