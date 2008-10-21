A WAHtmlBuilder is a convenience class to render html. I am supposed to be used like this.

WARenderCanvas builder render: [ :html |
	html anchor
		url: 'htttp://www.seaside.st';
		with: 'Seaside Homepage' ]

See WAHtmlBuilderTest for more examples.

Instance Variables
	callbackOwner:		<Object>
	canvasClass:		<WACanvas class>
	documentRoot:		<WARoot>
	fullDocument:		<Boolean>
	rootBlock:			<BlockContext>

callbackOwner
	- optional, the owner of the callbacks

canvasClass
	- the canvas class to use, on the class side it must implement #context:callbacks: as an object construction method

documentRoot
	- for private use only, the instantiated root of the document

fullDocument
	- whether a full html document including the head section should be rendered

rootBlock
	- a one argement block to customize the document root. The argument of the block is the root
