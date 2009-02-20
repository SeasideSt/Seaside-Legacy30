public
urlForAction: aBlock
	"Answer an action URL that will evaluate aBlock when it is requested."

	^ self actionUrl withParameter: (self storeCallback: (WAActionCallback on: aBlock))