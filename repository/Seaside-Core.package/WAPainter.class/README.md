A Painter is an object that renders XHTML onto a renderer (typically a subclass of WACanvas). The class of the renderer is specified by #rendererClass.

Subclasses should implement #renderContentOn: to do the actual rendering.

Painters do not store or backtrack state and do not provide call/answer semantics or decorations. They are not intended to be stored between requests and responses; they should be created for each response, used, and then discarded. If you want any of the above features, you should use a subclass of WAPresenter or WAComponent.

To cause a Painter to render itself, you should pass it to the #render: message of a renderer. For example, from within a Component you could do the following:

	renderContentOn: html
		html render: MyPainterSubclass new
