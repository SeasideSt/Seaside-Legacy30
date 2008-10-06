tests
testCollectionInheritance
	"Collection values assigned with #at:addAll: should add on to the inherited value."
	| root one two three |
	root := WAConfigurationMock new
		description: [ :config | (config collection: #a) ];
		yourself.
	one := WAConfigurationMock new
		description: [ :config | config at: #a addAll: #(1) removeAll: #(9) ];
		parents: [ Array with: root ];
		yourself.
	two := WAConfigurationMock new
		description: [ :config | config at: #a addAll: #(1 2) ];
		parents: [ Array with: one ];
		yourself.
	three := WAUserConfiguration new
		addParent: two;
		at: #a addAll: #(3 4) removeAll: #(1 8);
		yourself.

	self assert: (root at: #a) isEmpty.
	self assert: (one at: #a) = #(1) asSet.
	self assert: (two at: #a) = #(1 2) asSet.
	self assert: (three at: #a) = #(2 3 4) asSet.