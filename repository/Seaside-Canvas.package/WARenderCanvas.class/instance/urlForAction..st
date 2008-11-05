public
urlForAction: aBlock
	"Answer an action URL that will evaluate aBlock when beeing requested."

	^ self context actionUrl withParameter: (self callbacks registerActionCallback: aBlock)