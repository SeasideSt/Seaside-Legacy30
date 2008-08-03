WAAbstractPresenter holds the functionality that is common to WAPresenter and WADecoration. Subclasses of this class may have state and can be stored in instance variables of other Presenters.

You probably don't need to subclass WAAbstractPresenter directly. You may hower want to override the following functionality in your indirect subclasses:

	+ The ability to specify objects whose state should be backtracked (#states)
	+ A chance to update the root tag of the document (#updateRoot:) and the URL (#updateUrl:)
	+ The ability to examine the initial request that begun the session (#initialRequest:)
	+ The ability to provide CSS and JavaScript for the component (#style, #script)

Abstract functionality that is further specified in the direct concrete subclasses (and may also be overridden if needed) includes:

	+ Callback handling mechanism (#processCallbackStream:)
	+ Abstract support for Presenters that "contain" other Presenters (#nextPresentersDo:)
	+ The ability to maintain and backtrack state (#updateStates:)
	+ Abstract support for dealing with answer processing (#handleAnswer:)


