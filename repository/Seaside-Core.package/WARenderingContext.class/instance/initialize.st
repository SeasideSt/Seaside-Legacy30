initialize-release
initialize
	super initialize.
	callbacks := WACallbackRegistry context: self.
	visitor := WARenderVisitor context: self