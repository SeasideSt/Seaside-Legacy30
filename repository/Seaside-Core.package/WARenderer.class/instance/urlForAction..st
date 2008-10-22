public
urlForAction: aBlock
	"Answer an action URL that will evaluate aBlock when beeing requested."

	^ self actionUrl withParameter: (self callbacks registerActionCallback: aBlock)