testing
testRendering
	| context guide |
	context := WARenderingContext new.
	guide := WARenderingGuide client: (WARenderVisitor context: context).
	
	root onRender: [ :html |
		self assert: html context = context.
		self log: 'root' ].
	child1 onRender: [ :each |
		self assert: each context = context.
		self log: 'child1' ].
	child2 onRender: [ :html |
		self assert: html context = context.
		self log: 'child2' ].
	child3 onRender: [ :html |
		self assert: html context = context.
		self log: 'child3' ].
	decoration1 onRender: [ :html :cc |
		self assert: html context = context.
		self log: 'decoration1'.
		cc value ].
	decoration2 onRender: [ :html :cc |
		self assert: html context = context.
		self log: 'decoration2'.
		cc value ].

	" single root component "
	guide start: root.
	self assertLog: #('root').

	" add two children "
	root onChildren: [ Array with: child1 with: child2 ].
	root onRender: [ :html | 
		self log: 'root'.
		self assert: html context = context.
		html render: child1; render: child2 ].
	guide start: root.
	self assertLog: #('root' 'child1' 'child2').

	" add two decorations "
	root addDecoration: decoration1; addDecoration: decoration2.
	guide start: root.
	self assertLog: #('decoration2' 'decoration1' 'root' 'child1' 'child2').
	
	
	" delegate to another component "
	child2 show: child3.
	guide start: root.
	self assertLog: #('decoration2' 'decoration1' 'root' 'child1' 'child3')