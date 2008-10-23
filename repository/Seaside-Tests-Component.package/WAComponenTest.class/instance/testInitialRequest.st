testing
testInitialRequest
	| request |
	request := WARequest new.

	root onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'root' ].
	child1 onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'child1' ].
	child2 onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'child2' ].
	child3 onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'child3' ].
	decoration1 onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'decoration1' ].
	decoration2 onInitialRequest: [ :each |
		self assert: each = request.
		self log: 'decoration2' ].

	" single root component "
	WAAllPresenterGuide new
		client: (WAInitialRequestVisitor new
			request: request;
			yourself);
		start: root.
	self assertLog: #('root').

	" add two children "
	root onChildren: [ Array with: child1 with: child2 ].
	WAAllPresenterGuide new
		client: (WAInitialRequestVisitor new
			request: request;
			yourself);
		start: root.
	self assertLog: #('root' 'child1' 'child2').

	" add two decorations "
	root addDecoration: decoration1; addDecoration: decoration2.
	WAAllPresenterGuide new
		client: (WAInitialRequestVisitor new
			request: request;
			yourself);
		start: root.
	self assertLog: #('decoration2' 'decoration1' 'root' 'child1' 'child2').
	
	
	" delegate to another component "
	child2 show: child3.
	WAAllPresenterGuide new
		client: (WAInitialRequestVisitor new
			request: request;
			yourself);
		start: root.
	self assertLog: #('decoration2' 'decoration1' 'root' 'child1' 'child2' 'child3')