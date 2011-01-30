testing
testRendering
	"self run: #testRendering"
	| oldContext document newContext |
	oldContext := WARenderContext new
		actionUrl: WAUrl new;
		document: (WAHtmlDocument on: (WriteStream on: String new));
		yourself.
	oldContext visitor: (WARenderingGuide client: (WARenderVisitor context: oldContext)).
	newContext := oldContext copy.
	newContext disableHalos.
	document := WAPrettyPrintedDocument context: oldContext.
	newContext document: document.
	(WARenderVisitor context: newContext) start: WACacheCreator new. "from tools-web should be in dependency list"
	newContext document close