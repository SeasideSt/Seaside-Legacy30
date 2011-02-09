testing
testRendering
	"self debug: #testRendering"
	| oldContext document newContext stream |
	stream := WriteStream on: String new.
	oldContext := WARenderContext new
		actionUrl: WAUrl new;
		document: (WAHtmlDocument on: stream);
		yourself.
	oldContext visitor: (WARenderingGuide client: (WARenderVisitor context: oldContext)).
	newContext := oldContext copy.
	newContext disableHalos.
	document := WAPrettyPrintedDocument context: oldContext.
	newContext document: document.
	(WARenderVisitor context: newContext) start: WAPrettyPrintedDocumentTestComponent new. "from tools-web should be in dependency list"
	newContext document close.
	self assert: '&lt;<span class="wa-tag">h1</span>&nbsp;<span class="wa-attribute-key">title</span>=<span class="wa-attribute-value">&quot;&amp;amp;foo;&quot;</span>&gt;&amp;amp;foo;&lt;/<span class="wa-tag">h1</span>&gt;' = stream contents