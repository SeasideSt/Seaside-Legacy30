actions
replaceCache
	| cache |
	cache := self session inNewRenderLoopCall: WACacheCreator new.
	(cache notNil and: [ self confirm: 'This will clear all existing sessions in the current cache. Are you sure you want to continue?']) ifTrue: [
		self handler cache: cache.
		cacheEditor := WACacheEditor on: cache ]
	