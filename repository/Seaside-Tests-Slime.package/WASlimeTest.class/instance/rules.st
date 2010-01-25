accessing
rules
	^ OrderedCollection new
		addAll: WASlimeBlockLintRule allSubclasses;
		addAll: WASlimeParseTreeLintRule allSubclasses;
		addAll: WASlimeTransformationRule allSubclasses;
		yourself