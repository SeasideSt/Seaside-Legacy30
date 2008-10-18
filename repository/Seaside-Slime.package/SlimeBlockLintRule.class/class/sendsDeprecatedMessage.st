possible bugs
sendsDeprecatedMessage
	^ self new
		name: 'Sends deprecated message';
		rationale: 'Deprecated selectors will be removed with the next release of Seaside.';
		methodBlock: [ :context :result |
			context messages do: [ :each | 
				(Slime deprecatedSelectors includes: each) ifTrue: [ 
					result addClass: context selectedClass selector: context selector.
					result addSearchString: each ] ] ]